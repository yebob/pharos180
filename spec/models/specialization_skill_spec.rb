require 'rails_helper'

describe SpecializationSkill do
  it { should belong_to(:specialization) }
  it { should allow_value(build(:maker)).for(:specialization) }
  it { should_not allow_value(nil).for(:specialization) }

  it { should belong_to(:skill) }
  it { should allow_value(build(:inovation)).for(:skill) }
  it { should_not allow_value(nil).for(:skill) }
end
