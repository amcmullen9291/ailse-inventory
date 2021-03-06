class Card < ApplicationRecord
    belongs_to :occasion
    belongs_to :aisle
    belongs_to :manufacturer
    # validates_presence_of :sku
    validates_presence_of :occasion_id
    validates_presence_of :manufacturer_id
    validates_presence_of :aisle_id
    validates :in_stock, numericality: { only_integer: true }
    validates_presence_of :description
    validates :description, length: { maximum: 150 }
    has_one_attached :avatar
end
