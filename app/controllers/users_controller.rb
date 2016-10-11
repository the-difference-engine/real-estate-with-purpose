class UsersController < ApplicationController

  before_action :authenticate_admin!, except: [:new, :create, :destroy]

  def index
    @users = User.all
  end

  def new
    render 'new.html.erb'
  end

  def create
    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
      )
    if user.save
      session[:user_id] = user.id
      flash[:success] = 'Successfully created account!'
      redirect_to '/'
    else
      flash[:warning] = 'Invalid email or password'
      redirect_to '/signup'
    end
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.update(
                  first_name: params[:first_name],
                  last_name: params[:last_name],
                  email: params[:email])

    flash[:success] = 'User updated!'
    redirect_to "/users/#{@user.id}"
  end

  def destroy
    user = User.find_by(id: params[:id])
    user.destroy

    flash[:warning] = "User removed from database."
    redirect_to '/users'
  end
end
