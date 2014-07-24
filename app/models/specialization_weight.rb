class SpecializationWeight < ActiveRecord::Base

  belongs_to :specialization
  belongs_to :skill_category

  validates :weight, presence: true, numericality: { only_integer: true }
  validates :specialization, presence: true
  validates :skill_category, presence: true

end
