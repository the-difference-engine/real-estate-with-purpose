require 'rails_helper'

RSpec.describe AdminsController, type: :controller do
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

  it 'routes post create' do
    expect(:post => 'admins').to route_to(
      :controller => 'admins',
      :action => 'create')
  end

  it 'routes get admins/:id' do
    expect(:get => 'admins/1').to route_to(
      :controller => 'admins',
      :action => 'show',
      :id => '1')
  end

  it 'routes get admins/:id/edit' do
    expect(:get => 'admins/1/edit').to route_to(
      :controller => 'admins',
      :action => 'edit',
      :id => '1')
  end

  it 'routes patch admins/:id' do
    expect(:patch => 'admins/1').to route_to(
      :controller => 'admins',
      :action => 'update',
      :id => '1')
  end

  it 'routes delete admins/:id' do
    expect(:delete => 'admins/1').to route_to(
      :controller => 'admins',
      :action => 'destroy',
      :id => '1')
  end
end





