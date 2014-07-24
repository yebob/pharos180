require "rails_helper"

describe SpecializationWeight do
  it { should belong_to(:skill_category) }
  it { should allow_value(build(:corporate)).for(:skill_category) }
  it { should_not allow_value(nil).for(:skill_category) }

  it { should belong_to(:specialization) }
  it { should allow_value(build(:maker)).for(:specialization) }
  it { should_not allow_value(nil).for(:specialization) }

  it { should allow_value(50).for(:weight) }
  it { should_not allow_value(0.5).for(:weight) }
  it { should_not allow_value('foo').for(:weight) }
  it { should_not allow_value('').for(:weight) }

end
