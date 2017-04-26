
require 'rails_helper'
 
RSpec.describe BuyersController, type: :controller do
  it 'routes get index' do
    expect(:get => 'buyers').to route_to(
      :controller => 'buyers',
      :action => 'index')
  end
 
  it 'routes get new' do
    expect(:get => 'buyers/new').to route_to(
      :controller => 'buyers',
      :action => 'new')
  end

  it 'routes post create' do
    expect(:post => 'buyers').to route_to(
      :controller => 'buyers',
      :action => 'create')
  end

  it 'routes get buyers/:id' do
    expect(:get => 'buyers/1').to route_to(
      :controller => 'buyers',
      :action => 'show',
      :id => '1')
  end

  it 'routes get buyers/:id/edit' do
    expect(:get => 'buyers/1/edit').to route_to(
      :controller => 'buyers',
      :action => 'edit',
      :id => '1')
  end

  it 'routes patch buyers/:id' do
    expect(:patch => 'buyers/1').to route_to(
      :controller => 'buyers',
      :action => 'update',
      :id => '1')
  end

  it 'routes delete buyers/:id' do
    expect(:delete => 'buyers/1').to route_to(
      :controller => 'buyers',
      :action => 'destroy',
      :id => '1')
  end

  it 'should find all buyers' do
    get 'index' 
      expect(assigns(:buyers)).to eq(Buyer.all)
  end
  
  it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
 end