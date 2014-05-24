require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "name cannot be null" do
    test = User.new name: nil, email: "sucesso@sucesso.com"

    assert !test.valid?

  end

  test "email cannot be null" do
    test = User.new email: nil, name: "sucesso"

    assert !test.valid?
  end

  test "User is valid when name and email are filled" do
    test = User.new name: "sucesso", email: "sucess@sucesso.com"

    assert test.valid?
  end 

  test "User is not valid when name and email are null" do
    test = User.new name: nil, email: nil

    assert !test.valid?
  end
end
