class Card < ApplicationRecord
    belongs_to :occasions
    belongs_to :aisle
    validates_presence_of :sku
    validates_presence_of :manufacturer_id
    validates_presence_of :aisle_id
    validates_presence_of :occasion_id
    validates_presence_of :in_stock, numericality: { only_integer: true }
    validates_presence_of :description, length: { maximum: 150 }
    has_one_attached :avatar
    accepts_nested_attributes_for :name_of, allow_destroy: true

end
