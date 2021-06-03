# frozen_string_literal: true

class FollowersController < ApplicationController
  def show
    @user = User.find(params[:id])
    if @user
      @followers = @user.followers.all.order('created_at DESC')
      @followers = @followers.filter { |follower| follower.follower_id != current_user.id }
      @following = Follower.where(follower_id: @user.id)
      @user_names = @user.name.split(' ')
      @users = User.all
      @followers_all = Follower.all
      @followers_you_know = @followers.filter do |follower|
        @followers_all.any? do |f|
          f.user_id == follower.follower_id && f.follower_id == current_user.id
        end
        # && follower.follower_id != current_user.id
      end
      p @followers_you_know
    else
      redirect_to root_path
    end
  end

  def create
    user = User.find(params[:id])
    if user
      follower = Follower.where(follower_id: current_user.id, user_id: user.id)
      if follower[0]
        follower[0].destroy
        redirect_to user_path(user)
      else
        follower = user.followers.new
        follower.follower_id = current_user.id
        if follower.save
          redirect_to user_path(user)
        else
          redirect_to user_path(user)
        end
      end
    end
  end
end
