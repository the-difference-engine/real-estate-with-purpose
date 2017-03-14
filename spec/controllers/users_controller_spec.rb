require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  it 'routes get index' do
    expect(:get => 'users').to route_to(
      :controller => 'users',
      :action => 'index')
  end

  it 'should find all users' do
    get 'index' 
      expect(assigns(:users)).to eq(User.all)
  end
  it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

end
