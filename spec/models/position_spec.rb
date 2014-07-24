require "rails_helper"

describe Position do
  it { should belong_to(:area) }
  it { should allow_value(build(:technology)).for(:area) }
  it { should_not allow_value(nil).for(:area) }

  it { should belong_to(:specialization) }
  it { should allow_value(build(:maker)).for(:specialization) }
  it { should_not allow_value(nil).for(:specialization) }

  it { should have_many(:users) }
  it { should have_many(:position_skills) }
  it { should have_many(:skills).through(:position_skills) }

  it { should allow_value('foobar').for(:name) }
  it { should_not allow_value('foo').for(:name) }
  it { should_not allow_value('').for(:name) }
end
