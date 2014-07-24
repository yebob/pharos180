require 'rails_helper'

describe PositionSkill do
	it { should belong_to(:specialization) }
	it { should belong_to(:skill) }
end
