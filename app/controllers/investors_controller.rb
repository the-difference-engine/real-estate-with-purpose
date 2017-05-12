class InvestorsController < ApplicationController
  def index

    user = ENV['USERNAME']
    pass = ENV['PASSWORD']

    @price_min = params[:price_min]
    @price_max = params[:price_max]
    @baths_min = params[:baths_min]
    @baths_max = params[:baths_max]
    @beds_min = params[:beds_min]
    @beds_max = params[:beds_max]
    params[:location] != '' ? location = "&q=#{params[:location]}" : location = ''
    params[:offset] ? @offset = params[:offset] : @offset = '0'
    params[:current_page] ? @current_page = params[:current_page] : @current_page = 1
    params[:sort] ? @sort = params[:sort] : @sort = '-listdate'
    @just_location = params[:location]

    @down_payment = params[:down_payment]
    @interest_rate = params[:interest_rate]
    @loan_term = params[:loan_term]
    @est_insurance = params[:est_insurance]
    @hoa_min = params[:hoa_min]
    @hoa_max = params[:hoa_max]

    simplyrets_response = Unirest.get("https://#{user}:#{pass}@api.simplyrets.com/properties?status=Active&counties=cook#{location}&minprice=#{@price_min}&maxprice=#{@price_max}&minbaths=#{@baths_min}&maxbaths=#{@baths_max}&minbeds=#{@beds_min}&maxbeds=#{@beds_max}&sort=#{@sort}&limit=18&offset=#{@offset}", headers: { 'Accept' => 'application/json' })
    @properties = simplyrets_response.body
    total_results = simplyrets_response.headers[:x_total_count]
    @pages = (total_results.to_f / 18.0).ceil
  end
end
