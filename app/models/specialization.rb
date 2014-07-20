class Specialization < ActiveRecord::Base

  belongs_to :specialization_catefory

  has_many :specialization_skills
  has_many :specialization_weights

  validates :name, presence: true, allow_blank: false, length: { minimum: 5 }

end
