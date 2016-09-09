require 'rails_helper'

RSpec.describe AdminsController, type: :controller do
  it 'routes get index' do
    expect(:get => 'admins').to route_to(
      :controller => 'admins',
      :action => 'index')
  end

  if 'routes get new' do
    expect(:get => 'admins/new').to route_to(
      :controller => 'admins'),
      :action => 'new')
  end

end
