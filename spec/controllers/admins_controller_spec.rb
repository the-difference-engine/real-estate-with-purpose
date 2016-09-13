require 'rails_helper'

RSpec.describe AdminsController, type: :controller do

  # before do
  #     @admin = FactoryGirl.create(:admin)
  # end

  it 'routes get index' do
    expect(:get => 'admins').to route_to(
      :controller => 'admins',
      :action => 'index')
  end

  it 'routes get new' do
    expect(:get => 'admins/new').to route_to(
      :controller => 'admins',
      :action => 'new')
  end

  it 'routes get admins/:id' do
    expect(:get => 'admins/1').to route_to(
      :controller => 'admins',
      :action => 'show',
      :id => '1')
  end
end





