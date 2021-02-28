class ManufacturersController < ApplicationController

    def new 
        @manufacturer = Manufacturer.new
    end  

    def create 
        @manufacturer = Manufacturer.new(manufacturer_params)
        if @manufacturer.save 
            redirect_to cards_path, notice: "Manufacturer Added" 
        else 
            render :new
        end
    end 

    private 

    def manufacturer_params 
        params.require(:manufacturer).permit(:name)
    end 

end
