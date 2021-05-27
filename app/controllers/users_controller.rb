class UsersController < ApplicationController
  def show 
    @user = User.find(params[:id])
    @user_names = @user.name.split(" ")
  end
end
