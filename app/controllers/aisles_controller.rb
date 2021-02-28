class AislesController < ApplicationController
    def new 
        @aisle = Aisle.new
    end 

    def create 
        @aisle = Aisle.create 
        redirect_to root_path, notice: "Aisle added"
    end 

end
