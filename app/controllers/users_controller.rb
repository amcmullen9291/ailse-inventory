class UsersController < ApplicationController

    def welcome 
        @user = User.new
    end 

    def new 
        @user = User.new
    end

    def create 
        @user = User.new(user_params)
        if @user.save
            redirect_to cards_path, notice: "New User added"
        else
            render :new
        end
    end 

    private 

    def user_params 
        params.require(:user).permit(:access_id, :store_id, :notes, :EmployeeInit)
    end     
end