require "rails_helper"

describe PositionSkill do
	it { should belong_to(:position) }
	it { should belong_to(:level) }
	it { should belong_to(:skill) }
end
