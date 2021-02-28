class OccasionsController < ApplicationController
    
    def index 
        @occasion = Occasion.all
    end 

    def new 
        @occasion = Occasion.new
    end 

    def create 
    end 

    def show 
    end 

    def edit 
    end 

    def update 
    end 

    def destroy
    end 

    private 
    def occasion_name=(name)
        self.occasion = Occasion.find_or_create(:name => name)
        self.occasion << occasion 
    end

    def occasion_name 
        self.occasion ? self selfoccasion.name:nil 
    end 
end
