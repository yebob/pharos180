class Area < ActiveRecord::Base
  # such as tecnology, people management

  has_many :positions
  validates :name, presence: true, allow_blank: false
end
