class CardsController < ApplicationController
    def new 
    end

    def create 
    end 

    def edit 
    end 

    def update 
    end 

    def show 
    end 

    def destroy
    end 

    def index 
    end 

    private 
    def card_params
        params.require(:card).permit(:desription, :in_stock, :aisle_id, :occasion_id, :sku, :manufacturer_id, :avatar)
end
