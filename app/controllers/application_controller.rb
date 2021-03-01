class ApplicationController < ActionController::Base

    def update_notice
        $status << "#{@card.sku} updated"
    end 

    def require_login
        redirect_to root_path unless session.include? :user_id
    end

end
