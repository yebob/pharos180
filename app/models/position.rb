class Position < ActiveRecord::Base
  # such as developer, DBA, CIO

  belongs_to :area
  belongs_to :profile
  belongs_to :specialization

  has_many :proficiency_levels
  has_many :users

  validates :name, presence: true, allow_blank: false
end
