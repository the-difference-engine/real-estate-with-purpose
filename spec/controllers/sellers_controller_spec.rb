require 'rails_helper'

RSpec.describe SellersController, type: :controller do
  it 'routes get index' do
    expect(:get => 'sellers').to route_to(
      :controller => 'sellers',
      :action => 'index')
  end

  it 'routes get new' do
    expect(:get => 'sellers/new').to route_to(
      :controller => 'sellers',
      :action => 'new')
  end

  it 'routes post create' do
    expect(:post => 'sellers').to route_to(
      :controller => 'sellers',
      :action => 'create')
  end

  it 'routes get sellers/:id' do
    expect(:get => 'sellers/1').to route_to(
      :controller => 'sellers',
      :action => 'show',
      :id => '1')
  end

  it 'routes get sellers/:id/edit' do
    expect(:get => 'sellers/1/edit').to route_to(
      :controller => 'sellers',
      :action => 'edit',
      :id => '1')
  end

  it 'routes patch sellers/:id' do
    expect(:patch => 'sellers/1').to route_to(
      :controller => 'sellers',
      :action => 'update',
      :id => '1')
  end

  it 'routes delete sellers/:id' do
    expect(:delete => 'sellers/1').to route_to(
      :controller => 'sellers',
      :action => 'destroy',
      :id => '1')
  end

  it 'should find all sellers' do
    get 'index' 
      expect(assigns(:sellers)).to eq(Seller.all)
  end

  it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
end