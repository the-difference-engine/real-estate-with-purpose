class PropertiesController < ApplicationController
  # before_action :authenticate_admin!, except: [:index, :new, :create, :show]

  def index
    user = ENV["USERNAME"]
    pass = ENV["PASSWORD"]

    @price_min = params[:price_min]
    @price_max = params[:price_max]
    @baths_min = params[:baths_min]
    @baths_max = params[:baths_max]
    @beds_min = params[:beds_min]
    @beds_max = params[:beds_max]
    params[:location] != "" ? location = "&q=#{params[:location]}" : location = ""
    params[:offset] ? @offset = params[:offset] : @offset = '0'
    params[:current_page] ? @current_page = params[:current_page] : @current_page = 1
    params[:sort] ? @sort = params[:sort] : @sort = '-listdate'
    @just_location = params[:location]

    simplyrets_response = Unirest.get("https://#{user}:#{pass}@api.simplyrets.com/properties?status=Active&counties=cook#{location}&minprice=#{@price_min}&maxprice=#{@price_max}&minbaths=#{@baths_min}&maxbaths=#{@baths_max}&minbeds=#{@beds_min}&maxbeds=#{@beds_max}&sort=#{@sort}&limit=18&offset=#{@offset}",
                       headers: { "Accept" => "application/json" })
    @properties = simplyrets_response.body
    total_results = simplyrets_response.headers[:x_total_count]
    @pages = (total_results.to_f / 18.0).ceil
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.create(
      num_bedrooms: params[:num_bedrooms],
      num_bathrooms: params[:num_bathrooms],
      list_price: params[:list_price],
      image: params[:image],
      overview: params[:overview],
      details: params[:details],
      misc_details: params[:misc_details],
      line_1: params[:line_1],
      line_2: params[:line_2],
      api_address: params[:api_address],
      city: params[:api],
      state: params[:state],
      zip: params[:zip]
    )

    UserProperty.create(user_id: current_user.id,
                        property_id: @property.id)

    flash[:success] = 'Added to favorites!'
    redirect_to "/users/#{current_user.id}"
  end

  def show
    @property = Unirest.get("https://#{ENV['USERNAME']}:#{ENV['PASSWORD']}@api.simplyrets.com/properties/#{params[:id]}").body
    @days_on_market = (Time.current - Time.zone.parse(@property['listDate'])) / 86400
    @beds = @property["property"]["bedrooms"]
    @baths = @property["property"]["bathsFull"]
    @list_date = @property["listDate"].to_date.strftime('%b %d, %Y')

    @lat = @property["geo"]["lat"]
    @long = @property["geo"]["lng"]

    @property_information = []
    @property_information.push(@property["property"], @property["mls"])

    @relevant_information = []
    @relevant_information.push(@property["school"], @property["geo"], @property[
      "tax"], @property["disclaimer"])

    @realtor_information = []
    @realtor_information.push(@property["office"], @property["agent"], @property["coAgent"], @property["showingInstructions"])

    @information = Property.iterate(@relevant_information)
    @more_information = Property.iterate(@realtor_information)
    @other_information = @property.except('address', 'remarks',
                                         'privateRemarks', 'mlsId', 'property',
                                         'mls', 'agent', 'coAgent', 'office',
                                         'photos', 'listPrice', 'listDate',
                                         'listPrice', 'school', 'geo', 'tax')

    @map_image = "https://maps.googleapis.com/maps/api/staticmap?center=#{@lat},#{@long}&zoom=12&size=600x300&maptype=roadmap&markers=color:red%7Clabel:A%7C#{@lat},#{@long}&key=#{ENV['GOOGLE']}"

    if current_user
      user_favs = User.find(current_user.id).user_properties
      user_favs.each do |prop|
        if prop.property.api_address == params[:id]
          @favorite = prop
        end
      end
    end
    @realtor_information = []
    @realtor_information.push(
      @property["office"],
      @property["agent"],
      @property["coAgent"],
      @property["showingInstructions"])
  end

  def edit
    unless current_user && current_user.admin
      redirect_to '/'
    end
    @property = Property.find_by(id: params[:id])
  end

  def update
    @property = Property.find_by(id: params[:id])
    @property.update(
      num_bedrooms: params[:num_bedrooms],
      num_bathrooms: params[:num_bathrooms],
      list_price: params[:list_price],
      image: params[:image],
      overview: params[:overview],
      details: params[:details],
      misc_details: params[:misc_details]
    )
    flash[:success] = 'Property Updated'
    redirect_to "/properties/#{@property.id}"
  end

  def destroy
    favorite = UserProperty.find(params[:id])
    property = Property.find(favorite.property_id)
    property.destroy
    favorite.destroy

    flash[:warning] = "Removed from favorites."
    redirect_to "/users/#{current_user.id}"
  end
end
