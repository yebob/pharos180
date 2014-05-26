require 'test_helper'

class SkillCategoryTest < ActiveSupport::TestCase

  test "it should be valid skill when name is greater than 5" do
    a_skill_category = SkillCategory.new :name => "1"
    assert !a_skill_category.valid?

    a_skill_category = SkillCategory.new :name => "12345"
    assert a_skill_category.valid?
  end

  test "it should not be valid skill when name is empty" do
    a_skill_category = SkillCategory.new :name => ""
    assert !a_skill_category.valid?

    a_skill_category = SkillCategory.new :name => "     "
    assert !a_skill_category.valid?
  end

  test "it should be valid skill when name is defined" do
    a_skill_category = SkillCategory.new :name => "foo00"
    assert a_skill_category.valid?
  end

  test "it should not be valid skill when name is nil" do
    a_skill_category = SkillCategory.new :name => nil
    assert !a_skill_category.valid?
  end

  test "it should list all skills" do
    corporate = SkillCategory.create(name: "Corporativa")
    skill = corporate.skills.build(name: "Foco no Resultado")
    assert !skill.nil?
  end

end
