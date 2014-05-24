require 'test_helper'

class SpecializationTest < ActiveSupport::TestCase
  test "it should list skills" do
  	specialization = Specialization.create(name: "criador")
  	skill = Skill.create(name: "foco no resultado")
    specialization.skill_relevances.create(skill: skill)
    assert specialization.skills.size > 0
  end
end
