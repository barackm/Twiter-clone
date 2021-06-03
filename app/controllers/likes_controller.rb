# frozen_string_literal: true

class LikesController < ApplicationController
  def create
    tweet = Tweet.find(params[:id])
    like = Like.find_by(user_id: current_user.id, tweet_id: params[:id])

    if like
      like.destroy
      redirect_to tweet_path(tweet)
    else
      like = tweet.likes.build(user_id: current_user.id)

      if like.save
        redirect_to tweet_path(tweet)
      else
        flash[:error] = "Error Couldn't like the tweet."
        redirect_to tweet_path(tweet)
      end
    end
  end
end
