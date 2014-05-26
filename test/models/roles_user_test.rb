require 'test_helper'

class RolesUserTest < ActiveSupport::TestCase


  test "RolesUser user and role must be valid" do
    test = RolesUser.new user: User.first, role: Role.first
    assert test.valid?
  end

  test "RolesUser is not valid when user doesn`t exists" do
    test = RolesUser.new role: Role.first, user: nil
    assert !test.valid?
  end

  test "RolesUser is not valid when role doesn`t exists" do
    test = RolesUser.new user: User.first, role: nil
    assert !test.valid?
  end

end
