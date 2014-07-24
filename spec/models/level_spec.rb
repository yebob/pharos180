require "rails_helper"

describe Level do
  it { should have_many(:position_skills) }
  it { should have_many(:skill_levels) }

  it { should allow_value('foobar').for(:name) }
  it { should_not allow_value('foo').for(:name) }
  it { should_not allow_value('').for(:name) }
end
