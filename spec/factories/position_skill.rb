FactoryGirl.define do
  factory :position_skill do
    factory :developer_inovation_basic do
	  position { build(:developer) }
      skill { build(:inovation) }
      level { build(:basic) }
    end
  end
end
