class User < ApplicationRecord
    serialize :notes
    validates_presence_of :store_id
    validates_presence_of :access_id
    validates :employeeInIt, length: { in: 6..20 }, format: { with: /\A[a-zA-Z]+\z/,
    message: "Only Use Letters" }
    validates :notes, length: { maximum: 150 }

end
