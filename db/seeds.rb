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
SKILLS.each do |sk_name, skills|
  skill_category = SkillCategory.find_or_create_by(name: sk_name)
  skills.each do |skill|
    skill_model = Skill.create!(name: skill['name'], skill_category: skill_category)
    puts "Created skill: #{skill_model.name}"

    skill['levels'].each do |level_name, description|
      level = Level.find_or_create_by(name: level_name)

      sl = SkillLevel.create!(skill: skill_model, level: level, description: description.join("\n"))
      puts ".. Created skill: #{sl.description}"
    end
  end
end


# POSITIONS
# POSITIONS.each do |pos|
#   profile = Profile.find_or_create_by(name: pos['profile'])
#   specialization = Specialization.find_or_create_by(name: pos['specialization'])

#   position = Position.create(
#     name: pos['position'],
#     profile: profile,
#     specialization: specialization
#   )

#   puts "Created position: #{position.name}"
#   puts ".. Using profile: ##{profile.id} #{profile.name}"
#   puts ".. Using specialization: ##{specialization.id} #{specialization.name}"
# end
