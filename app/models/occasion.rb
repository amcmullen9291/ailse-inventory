class Occasion < ApplicationRecord
    serialize :name_of
    has_many :cards
    has_many :aisles, through: :cards 
    validates_presence_of :name_of
    validates_uniqueness_of :name_of, :message => "Already Listed"
end
