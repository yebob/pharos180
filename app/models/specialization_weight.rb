class SpecializationWeight < ActiveRecord::Base

  belongs_to :specialization
  belongs_to :skill_category

  validates :weight, presence: true, allow_blank: false, length: { minimum: 5 }

end
