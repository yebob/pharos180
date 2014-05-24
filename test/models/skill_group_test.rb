require 'test_helper'

class SkillGroupGroupTest < ActiveSupport::TestCase

  test "it should be valid skill when name is greater than 5" do
    a_skill_group = SkillGroup.new :name => "1"
    assert !a_skill_group.valid?

    a_skill_group = SkillGroup.new :name => "12345"
    assert a_skill_group.valid?
  end

  test "it should not be valid skill when name is empty" do
    a_skill_group = SkillGroup.new :name => ""
    assert !a_skill_group.valid?

    a_skill_group = SkillGroup.new :name => "     "
    assert !a_skill_group.valid?
  end

  test "it should be valid skill when name is defined" do
    a_skill_group = SkillGroup.new :name => "foo00"
    assert a_skill_group.valid?
  end

  test "it should not be valid skill when name is nil" do
    a_skill_group = SkillGroup.new :name => nil
    assert !a_skill_group.valid?
  end
end
