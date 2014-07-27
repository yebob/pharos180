require 'rails_helper'

describe Skill do
  it { should belong_to(:skill_category) }
  it { should allow_value(build(:corporate)).for(:skill_category) }
  it { should_not allow_value(nil).for(:skill_category) }

  it { should have_many(:position_skills) }
  it { should have_many(:skill_levels) }
  it { should have_many(:specialization_skills) }

  it { should allow_value('foobar').for(:name) }
  it { should_not allow_value('foo').for(:name) }
  it { should_not allow_value('').for(:name) }
end
