require 'rails_helper'

describe Position do
  it { should belong_to(:skill) }
  it { should belong_to(:level) }

  it { should allow_value('foobar').for(:name) }
  it { should_not allow_value('foo').for(:name) }
  it { should_not allow_value('').for(:name) }
end
