class SessionsController < ApplicationController


    def new 
    end 

    def create
        @user = User.find_by_store_id(params[:store_id])
        if @user && @user.authenticate(params[:access_id])
            $status = ()
            session[:user_id] = @user.EmployeeInit
            redirect_to root_path, notice: "Welcome"
        else
          render '/', notice: "Access Denied"
        end
    end
end 

