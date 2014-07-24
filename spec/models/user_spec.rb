require "rails_helper"

describe User do
  it { should belong_to(:position) }

  it { should allow_value('jhon doe').for(:name) }
  it { should_not allow_value('foo').for(:name) }
  it { should_not allow_value('').for(:name) }

  it { should allow_value(build(:developer)).for(:position) }
  it { should_not allow_value(nil).for(:position) }
end
