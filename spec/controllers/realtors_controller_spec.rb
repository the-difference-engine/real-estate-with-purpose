  require 'rails_helper'

RSpec.describe RealtorsController, type: :controller do
  it 'routes get index' do
    expect(:get => 'realtors').to route_to(
      :controller => 'realtors',
      :action => 'index')
  end

  it 'routes get new' do
    expect(:get => 'realtors/new').to route_to(
      :controller => 'realtors',
      :action => 'new')
  end

  it 'routes post create' do
    expect(:post => 'realtors').to route_to(
      :controller => 'realtors',
      :action => 'create')
  end

  it 'routes get realtors/:id' do
    expect(:get => 'realtors/1').to route_to(
      :controller => 'realtors',
      :action => 'show',
      :id => '1')
  end

  it 'routes get realtors/:id/edit' do
    expect(:get => 'realtors/1/edit').to route_to(
      :controller => 'realtors',
      :action => 'edit',
      :id => '1')
  end

  it 'routes patch realtors/:id' do
    expect(:patch => 'realtors/1').to route_to(
      :controller => 'realtors',
      :action => 'update',
      :id => '1')
  end

  it 'routes delete realtors/:id' do
    expect(:delete => 'realtors/1').to route_to(
      :controller => 'realtors',
      :action => 'destroy',
      :id => '1')
  end

   it 'should find all realtors' do
     get 'index' 
       expect(assigns(:realtors)).to eq(Realtor.all)
   end
   it "renders the index template" do
       get :index
       expect(response).to render_template("index")
     end

   describe 'GET #show' do
     it "assigns the requested realtor to @realtor" do
       realtor = create(:realtor)
       get :show, id: realtor
       expect(assigns(:realtor)).to eq realtor
     end

     it "renders the :show template" do
       realtor = create(:realtor)
       get :show, id: realtor
       expect(response).to render_template :show
     end
  end
  describe 'GET #new' do
        it "creates a new realtor" do
         controller.stub(:authenticate_admin!) { true }
         expect {
           post :create, FactoryGirl.attributes_for(:realtor)
          }.to change(Realtor, :count).by(1)
        end
          

     it "renders the :new template" do
      controller.stub(:authenticate_admin!) { true }
      get :new
      expect(response).to render_template :new
     end
    end
end





