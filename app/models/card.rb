class Card < ApplicationRecord
    belongs_to :occasion
    belongs_to :aisle
    # validates_presence_of :sku
    validates_presence_of :manufacturer_id
    validates_presence_of :aisle_id
    validates :in_stock, numericality: { only_integer: true }
    validates_presence_of :description
    validates :description, length: { maximum: 150 }
    accepts_nested_attributes_for :occasion
    has_one_attached :avatar
end
