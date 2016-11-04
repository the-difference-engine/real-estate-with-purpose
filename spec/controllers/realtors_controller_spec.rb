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
end





