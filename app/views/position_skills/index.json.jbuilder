json.array!(@position_skills) do |position_skill|
  json.extract! position_skill, :id
  json.url position_skill_url(position_skill, format: :json)
end
