class Position < ActiveRecord::Base

  has_many :users
  belongs_to :area

  validates :name, presence: true, allow_blank: false


end
