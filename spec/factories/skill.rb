FactoryGirl.define do
  factory :skill do
    factory :inovation do
      name "Inovation"
      skill_category { build(:corporate) }
    end
    factory :relashionship do
      name "Relashionship"
      skill_category { build(:corporate) }
    end
  end
end
