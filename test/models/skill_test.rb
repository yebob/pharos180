require 'test_helper'

class SkillTest < ActiveSupport::TestCase

  test "should be valid skill when name is greater than 5" do
    a_skill = Skill.new :name => "1"
    assert !a_skill.valid?

    a_skill = Skill.new :name => "12345"
    assert a_skill.valid?
  end

  test "should not be valid skill when name is empty" do
    a_skill = Skill.new :name => ""
    assert !a_skill.valid?

    a_skill = Skill.new :name => "     "
    assert !a_skill.valid?
  end

  test "should be valid skill when name is defined" do
    a_skill = Skill.new :name => "foo00"
    assert a_skill.valid?
  end

  test "should not be valid skill when name is nil" do
    a_skill = Skill.new :name => nil
    assert !a_skill.valid?
  end

  test "should list levels by skills" do
    level = Level.create name: 'Básico'
    skill = Skill.create name: 'Foco no resultado'
    skill.proficiency_levels.create(level: level)
    assert skill.levels.size > 0
  end
end

