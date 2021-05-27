class TweetsController < ApplicationController
    def index 
        @new_tweet = Tweet.new
        @users = User.all
        @tweets = Tweet.all.order("created_at DESC")
    end
      
    def new 
        @tweet = Tweet.new
    end

    def create
        user = User.find(current_user.id)
        # user.Tweet.new(tweet_params)
        @tweet = Tweet.new(tweet_params)
        @tweet.user_id = user.id 
        if @tweet.save
            redirect_to home_path         
        else
            redirect_to home_path   
        end
    end
  
    def show 
        @tweet = Tweet.find(params[:id])
        @comment = Comment.new
    end

    def tweet_params 
        params.require(:tweet).permit(:text)
    end
end
