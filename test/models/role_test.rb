require 'test_helper'

class RoleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not be valid role when name is nil" do

    test_role = Role.new 
    test_role.name = nil

    assert !test_role.valid?

  end 

  test "should be valid role when name is defined" do

    test_role = Role.new
    test_role.name = "Talita"

    assert test_role.valid?  

  end 

end
