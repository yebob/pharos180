require "rails_helper"

describe Area do
	it { should have_many(:positions) }
	it { should allow_value('foo').for(:name) }
	it { should_not allow_value('').for(:name) }

end
