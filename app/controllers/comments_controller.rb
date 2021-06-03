# frozen_string_literal: true

class CommentsController < ApplicationController
  def create
    tweet = Tweet.find(params[:tweet_id])
    user = current_user.id
    comment = Comment.new(comment_params)
    comment.user_id = user
    comment.tweet_id = tweet.id

    if comment.save
      flash[:notice] = 'Comment added successfully.'
      redirect_to tweet_path(tweet)
    else
      flash[:error] = "The comment couldn't be saved."
      redirect_to tweet_path(tweet)
    end
  end

  def comment_params
    params.require(:comment).permit(:text, :tweet_id)
  end
end
