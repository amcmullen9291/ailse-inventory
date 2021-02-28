class User < ApplicationRecord
    serialize :notes
    validates_presence_of :store_id, :message => "not entered"
    validates_presence_of :access_id, :message => "not entered"
    validates_presence_of :EmployeeInit, :message => "not entered"
    validates :notes, length: { maximum: 150 }

end
