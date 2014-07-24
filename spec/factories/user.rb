FactoryGirl.define do
  factory :user do
    factory :user_test do
      name "User Test"
      position { build(:developer) }
    end
  end
end
