# frozen_string_literal: true

class TweetsController < ApplicationController
  def index
    @new_tweet = Tweet.new
    @users = User.all
    followers = current_user.followers
    @tweets = Tweet.all.order('created_at DESC')
    @tweets = @tweets.filter do |tweet|
      followers.any? do |follower|
        follower.follower_id == tweet.user_id
      end || tweet.user_id == current_user.id
    end
  end

  def new
    @tweet = Tweet.new
  end

  def create
    user = User.find(current_user.id)
    @tweet = user.tweets.build(tweet_params)
    if @tweet.save
      flash[:notice] = 'Tweet added successfully.'
      redirect_to home_path
    else
      flash[:error] = "Error The Tweet couldn't be saved"
      redirect_to home_path
    end
  end

  def show
    @tweet = Tweet.find(params[:id])
    @comment = Comment.new
  end

  def tweet_params
    params.require(:tweet).permit(:text, :cover_picture)
  end
end
