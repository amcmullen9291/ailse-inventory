class Aisle < ApplicationRecord
    has_many :cards 
    has_many :occasions, through: :cards
    has_many :manufacturers, through: :cards
end
