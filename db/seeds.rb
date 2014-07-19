# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

skills_file = YAML.load_file(File.join(Rails.root, 'db/data/skills.yml'))
positions_file = YAML.load_file(File.join(Rails.root, 'db/data/positions.yml'))
SKILLS = skills_file['skills']
POSITIONS = positions_file['positions']

# SKILLS
corp_cat = SkillCategory.create(name: 'Corporativo')
SKILLS['corporate'].each do |s|

  levels = s['levels']

  s['skill_category'] = corp_cat
  s.delete 'levels'

  skill = Skill.create(s)
  puts "Created skill: #{skill.name}"

  levels.each do |k, v|
    sl = SkillLevel.create(name: k, description: v.join("\n"))
    puts ".. Created skill: #{sl.name}"
  end
end


# POSITIONS
POSITIONS.each do |pos|
  profile = Profile.find_or_create_by(name: pos['profile'])
  specialization = Specialization.find_or_create_by(name: pos['specialization'])

  position = Position.create(
    name: pos['position'],
    profile: profile,
    specialization: specialization
  )

  puts "Created position: #{position.name}"
  puts ".. Using profile: ##{profile.id} #{profile.name}"
  puts ".. Using specialization: ##{specialization.id} #{specialization.name}"
end
