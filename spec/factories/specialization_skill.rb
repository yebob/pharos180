FactoryGirl.define do
  factory :specialization_skill do
    factory :maker_inovation do
      specialization { build(:maker) }
      skill { build(:inovation) }
    end
  end
end
