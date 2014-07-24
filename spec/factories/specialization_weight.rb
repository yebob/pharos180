FactoryGirl.define do
  factory :specialization_weight do
    factory :maker_corporate do
      specialization { build(:maker) }
      skill_category { build(:corporate) }
    end
  end
end
