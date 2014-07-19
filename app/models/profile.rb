class Profile < ActiveRecord::Base
  # such as técnico, suporte, negócios
  
  validates :name, presence: true, allow_blank: false

  has_many :users
  has_many :specializations
end
