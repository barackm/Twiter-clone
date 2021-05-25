class HomeController < ApplicationController
    def index 
        @tweets = Tweet.all
        @tweet = Tweet.new
        # text:""
        # @tweets = [1,2,3,4,5]
    end
end
