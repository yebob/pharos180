require "rails_helper"

describe Position do
  it { should belong_to(:area) }
end
