class Area < ActiveRecord::Base
  
  has_many :positions
  validates :name, presence: true, allow_blank: false
 end
