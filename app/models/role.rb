class Role < ActiveRecord::Base
  validates :name, presence: true, allow_blank: false

  has_many :roles_users
end
