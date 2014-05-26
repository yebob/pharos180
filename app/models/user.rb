class User < ActiveRecord::Base
  validates :name, presence: true, allow_blank: false
  validates :email, presence: true, allow_blank: false

  belongs_to :profile
  belongs_to :position
  has_many :roles_users
end
