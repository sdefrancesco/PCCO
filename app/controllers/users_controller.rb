class UsersController < ApplicationController
  def show
 	@user = User.find(params[:id])
 	@user_artistuploads = @user.artistuploads
  end

  def index
  	@user = User.all
  	

  end

  def edit

  end

  def create 
  	@user = User.create( user_params )
  end

  private 

  def user_params
  		params.require(:user).permit(:avatar)
  end
end
