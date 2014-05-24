require 'test_helper'

class AreaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "name cannot be null" do
    test_area = Area.new
    test_area.name = nil
    assert !test_area.valid?
  end  

  test "name is valid when name is filled" do
    test_area = Area.new
    test_area.name = "Mattos"
    assert test_area.valid?
  end  

end
