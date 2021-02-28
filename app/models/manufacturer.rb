class Manufacturer < ApplicationRecord
    has_many :cards 
    has_many :aisles, through: :cards
    validates_presence_of :name 
    validates_uniqueness_of :name, :message => "Already Listed"
end
