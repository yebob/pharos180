require "rails_helper"

describe PositionSkill do
  it { should belong_to(:position) }
  it { should allow_value(build(:developer)).for(:position) }
  it { should_not allow_value(nil).for(:position) }

  it { should belong_to(:level) }
  it { should allow_value(build(:basic)).for(:level) }
  it { should_not allow_value(nil).for(:level) }

  it { should belong_to(:skill) }
  it { should allow_value(build(:inovation)).for(:skill) }
  it { should_not allow_value(nil).for(:skill) }
end
