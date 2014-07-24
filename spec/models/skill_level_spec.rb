require 'rails_helper'

describe SkillLevel do
  it { should belong_to(:skill) }
  it { should allow_value(build(:inovation)).for(:skill) }
  it { should_not allow_value(nil).for(:skill) }

  it { should belong_to(:level) }
  it { should allow_value(build(:basic)).for(:level) }
  it { should_not allow_value(nil).for(:level) }

  it { should allow_value('foobar').for(:description) }
  it { should_not allow_value('foo').for(:description) }
  it { should_not allow_value('').for(:description) }
end
