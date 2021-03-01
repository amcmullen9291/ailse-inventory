class UsersController < ApplicationController

    def welcome 
         flash.notice = "Aisle Inventory - 2021  ©"
    end 

    def new 
        @user = User.new
    end

    def create 
        @user = User.new(user_params)
        if @user.save
            UserMailer.aisle_inventory.deliver_now
            session[:user_id] = @user.EmployeeInit
            redirect_to cards_path, notice: "Welcome"
        else
            render :new
        end
    end 

    private 

    def user_params 
        params.require(:user).permit(:password, :store_id, :notes, :EmployeeInit, :password_digest)
    end     
end
