class SessionsController < ApplicationController


    def new 
    end 

    def create
        @user = User.find_by_store_id(params[:store_id])
        if @user && @user.authenticate(params[:password])
            $status = ()
            session[:user_id] = @user.EmployeeInit
            UserMailer.aisle_inventory.deliver_now
            redirect_to cards_path, notice: "Welcome"
        else

          redirect_to login_path, notice: "Access Denied"
        end
    end

    def destroy
        session.destroy
        UserMailer.activity_report.deliver_now
        redirect_to root_path, notice: "Goodbye"
      end
end 

