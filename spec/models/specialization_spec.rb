require 'rails_helper'

describe SpecializationCategory do
  it { should have_many(:specializations) }

  it { should allow_value('foobar').for(:name) }
  it { should_not allow_value('foo').for(:name) }
  it { should_not allow_value('').for(:name) }

end
