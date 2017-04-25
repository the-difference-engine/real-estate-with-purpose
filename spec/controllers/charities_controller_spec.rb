require 'rails_helper'

RSpec.describe CharitiesController, type: :controller do
  it 'routes get index' do
    expect(:get => 'charities').to route_to(
      :controller => 'charities',
      :action => 'index')
  end

  it 'routes get new' do
    expect(:get => 'charities/new').to route_to(
      :controller => 'charities',
      :action => 'new')
  end

  it 'routes post create' do
    expect(:post => 'charities').to route_to(
      :controller => 'charities',
      :action => 'create')
  end

  it 'routes get charities/:id' do
    expect(:get => 'charities/1').to route_to(
      :controller => 'charities',
      :action => 'show',
      :id => '1')
  end

  it 'routes get charities/:id/edit' do
    expect(:get => 'charities/1/edit').to route_to(
      :controller => 'charities',
      :action => 'edit',
      :id => '1')
  end

  it 'routes patch charities/:id' do
    expect(:patch => 'charities/1').to route_to(
      :controller => 'charities',
      :action => 'update',
      :id => '1')
  end

  it 'routes delete charities/:id' do
    expect(:delete => 'charities/1').to route_to(
      :controller => 'charities',
      :action => 'destroy',
      :id => '1')
  end

  it 'should find all charities' do
    get 'index' 
      expect(assigns(:charities)).to eq(Charity.all)
  end
  it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

end





