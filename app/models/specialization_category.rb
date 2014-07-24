class SpecializationCategory < ActiveRecord::Base

  has_many :specializations

  validates :name, presence: true, allow_blank: false, length: { minimum: 5 }
end
