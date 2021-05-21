class TweetsController < ApplicationController
    def create
        @tweet = params[:message]
        redirect_to "/login"
    end
end
