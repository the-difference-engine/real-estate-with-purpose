require 'rails_helper'

RSpec.describe AdminsController, type: :controller do
  it 'routes get index' do
    expect(:get => 'admins').to route_to(
      :controller => 'admins',
      :action => 'index')
  end

end
