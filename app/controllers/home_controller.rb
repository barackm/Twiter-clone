class HomeController < ApplicationController
    def index 
        @tweets = Tweet.all.order("created_at")
        @tweet = Tweet.new
        @users = User.all
    end
end
