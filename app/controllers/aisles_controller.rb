class AislesController < ApplicationController
    def new 
        @aisle = Aisle.new
    end 

    def create 
        @aisle = Aisle.new(aisle_params) 
        if @aisle.save 
            redirect_to root_path, notice: "Aisle added"
        else 
            render :new 
        end
    end 

    private 

    def aisle_params 
        params.require(:aisle).permit(:aisle_number)
    end
end
