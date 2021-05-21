class UsersController < ApplicationController
    def login 
        puts "#{request.path} => the path"
        puts request.path == "/login"
    end

    def signup 
        puts "#{request.path} => the path"
    end
end
