class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  scope :notnil, -> () {
    where.not(result_no: nil)
  }
end
