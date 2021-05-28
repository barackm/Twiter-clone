class LikesController < ApplicationController
    def create
        like = Like.find_by(user_id: current_user.id)
        tweet = Tweet.find(params[:id])
        # Binding.pry
        if(like) 
            like.destroy
            redirect_to tweet_path(tweet)
            # if current_page?(tweet_path(tweet))
            # elsif current_page?(tweets_path)
            #     redirect_to tweets_path
            # end
        else 
            like = Like.new 
            like.user_id = current_user.id
            like.tweet_id = tweet.id

            if(like.save)
                redirect_to tweet_path(tweet)
            else
                flash[:error] = "Error Couldn't like the tweet."
                redirect_to tweet_path(tweet)
            end
        end
        
        

    end
end
