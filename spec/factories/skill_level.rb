FactoryGirl.define do
  factory :skill_level do
    factory :inovation_basic do
      description "Basic description"
      skill { build(:inovation) }
      level { build(:basic) }
    end
  end
end
