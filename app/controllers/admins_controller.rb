class AdminsController < ApplicationController
  def index
    @admins = Admin.all
  end

  def new
    @admin = Admin.new
  end

  def create
    admin = Admin.create(
      name: params[:name]
      )

    redirect_to "/admins/#{admin.id}"
  end

  def show
    @Admin = Admin.find_by(id: params[:id])
  end

  def edit
    @admin = Admin.find_by(id: params[:id])
  end

  def update
    @admin = Admin.find_by(id: params[:id])

    if @admin.update(
      name: params[:name]
    end
    ad
    redirect_to "/admins/#{admin.id}"
  end

  def destroy
    @admin = Admin.find_by(id: params[:id])
    @admin.destroy

    flash[:warning] = "Destroyed!"
    redirect_to "/"
  end
end
