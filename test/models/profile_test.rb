require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not be valid profile when name is nil" do
    test_profile = Profile.new name: nil

    assert !test_profile.valid?

  end

  test "should be valid profile when name is defined" do
    test_profile = Profile.new name: "Isra"

    assert test_profile.valid?

  end
end
