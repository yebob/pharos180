class User < ActiveRecord::Base

  has_one :position

  validates :name, presence: true, allow_blank: false, length: { minimum: 5 }

end
