class Occasion < ApplicationRecord
    has_many :cards
    has_many :aisles, through: :cards 

    validates_presence_of :name_of, length: { minimum: 5 }
    accepts_nested_attributes_for :name_of
end
