class Position < ActiveRecord::Base

  has_many :users
  belongs_to :area
  has_many :proficiency_levels

  validates :name, presence: true, allow_blank: false


end
