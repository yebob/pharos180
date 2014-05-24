require 'test_helper'

class PositionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not be valid position when name is nil" do
    test_position = Position.new
    test_position.name = nil
    assert !test_position.valid?
  end

  test "should be valid position when name is defined" do
    test_position = Position.new
    test_position.name = "abc"
    assert test_position.valid?
  end

end
