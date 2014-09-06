require 'rails_helper'

describe Specialization do
  it { should have_many(:specialization_skills) }
  it { should have_many(:specialization_weights) }
  it { should have_many(:positions) }
  it { should have_many(:skills).through(:specialization_skills) }

  it { should allow_value('foobar').for(:name) }
  it { should_not allow_value('foo').for(:name) }
  it { should_not allow_value('').for(:name) }
end
