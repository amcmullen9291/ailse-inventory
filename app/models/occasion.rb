class Occasion < ApplicationRecord
    belongs_to :aisle
    has_many :cards
    has_many :aisles, through: :cards 
    validates_presence_of :name_of
    validates_uniqueness_of :name_of
end
