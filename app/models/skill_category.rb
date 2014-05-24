class SkillCategory < ActiveRecord::Base
  validates :name, presence: true, allow_blank: false, length: { minimum: 5 }
end
