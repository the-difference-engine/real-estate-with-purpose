require 'rails_helper'

RSpec.describe DonationsController, type: :controller do
  it 'routes get index' do
    expect(:get => 'donations').to route_to(
      :controller => 'donations',
      :action => 'index')
  end

  it 'routes get new' do
    expect(:get => 'donations/new').to route_to(
      :controller => 'donations',
      :action => 'new')
  end

  it 'routes post create' do
    expect(:post => 'donations').to route_to(
      :controller => 'donations',
      :action => 'create')
  end

  it 'routes get donations/:id' do
    expect(:get => 'donations/1').to route_to(
      :controller => 'donations',
      :action => 'show',
      :id => '1')
  end

  it 'routes get donations/:id/edit' do
    expect(:get => 'donations/1/edit').to route_to(
      :controller => 'donations',
      :action => 'edit',
      :id => '1')
  end

  it 'routes patch donations/:id' do
    expect(:patch => 'donations/1').to route_to(
      :controller => 'donations',
      :action => 'update',
      :id => '1')
  end

  it 'routes delete donations/:id' do
    expect(:delete => 'donations/1').to route_to(
      :controller => 'donations',
      :action => 'destroy',
      :id => '1')
  end

  it 'should find all donations' do
    get 'index' 
      expect(assigns(:donations)).to eq(Donation.all)
  end

  it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
end