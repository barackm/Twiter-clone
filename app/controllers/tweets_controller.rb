class TweetsController < ApplicationController
    def create
        @tweet = Tweet.new(tweet_params)
        if @tweet.save
            redirect_to home_path         
        else
            redirect_to home_path   
        end
    end
    
    def new 
        @tweet = Tweet.new
    end

    def tweet_params 
        params.require(:tweet).permit(:text)
    end
end
