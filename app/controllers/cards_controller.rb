class CardsController < ApplicationController
    before_action :set_card, only: [:show, :edit, :update, :destroy]
    def new 
        @card = Card.new
    end

    def create 
        @card = Card.new(card_params)
        if @card.save
            redirect_to cards_path, notice: "Item Added"
        else
            render :new, notice: "Item not added. Try again"
        end 
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
        @cards = Card.all
    end 

    private 
    def card_params
        params.require(:card).permit(:description, :in_stock, :aisle_id, :card, :occasion_id, :sku, :manufacturer_id, :avatar)
    end

    def set_card 
        @card = Card.find(params[:id])
    end 

end
