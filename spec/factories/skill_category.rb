FactoryGirl.define do
  factory :skill_category do
    factory :corporate do
      name "Corporate"
    end
    factory :management do
      name "Management"
    end
    factory :specific do
      name "Specific"
    end
  end
end
