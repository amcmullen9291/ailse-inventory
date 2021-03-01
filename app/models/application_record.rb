class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  $status = ()
end
