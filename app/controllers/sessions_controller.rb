class SessionsController < ApplicationController
    
    def current_user
        session[:name]
    end

    def new

    end
    
    def create
        # byebug
        if current_user == nil 
            redirect_to '/login'
        else  
            if session[:name] != nil
            current_user = session[:name]
            end
        end
    end

    def destroy
        
    end
end