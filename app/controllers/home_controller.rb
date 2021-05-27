class HomeController < ApplicationController
    before_action :authenticate_user!
    def index 
        @tweets = Tweet.all
        @tweet = Tweet.new
        @users = User.all
        p @users
        # text:""
        # @tweets = [1,2,3,4,5]
    end
end
