require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  it 'routes get index' do
    expect(:get => 'users').to route_to(
      :controller => 'users',
      :action => 'index')
  end

   it 'should find all users' do
     controller.stub(:authenticate_admin!) { true }
     get :index 
        expect(assigns(:users)).to eq(User.all)
   end
  

end
