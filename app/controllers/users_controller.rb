# frozen_string_literal: true

class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_names = @user.name.split(' ')
    @following = Follower.where(follower_id: @user.id).count
  end
end
