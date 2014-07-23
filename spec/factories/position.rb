FactoryGirl.define do
  factory :position do
    factory :developer do
      name "Developer"
      area build(:technology)
      specialization build(:maker)
    end
  end
end
