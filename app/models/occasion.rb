class Occasion < ApplicationRecord
    has_many :cards
    has_many :aisles, through: :cards 

    validates_presence_of :name_of, length: { minimum: 5 }
    validates_uniqueness_of :name_of, :message => "Already Listed"
end
