class ApplicationController < ActionController::Base

    def update_notice
        $status << "#{@card.sku} updated"
    end 

end
