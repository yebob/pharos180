FactoryGirl.define do
  factory :specialization do
    factory :maker do
      name "maker"
      specialization_category { create(:technician) }
    end
  end
end
