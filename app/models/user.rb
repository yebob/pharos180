class User < ActiveRecord::Base

  belongs_to :position

  validates :name, presence: true, allow_blank: false, length: { minimum: 5 }
  validates :position, presence: true

end
