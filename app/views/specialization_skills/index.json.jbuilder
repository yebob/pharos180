json.array!(@specialization_skills) do |specialization_skill|
  json.extract! specialization_skill, :id
  json.url specialization_skill_url(specialization_skill, format: :json)
end
