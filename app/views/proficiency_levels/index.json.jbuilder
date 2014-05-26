json.array!(@proficiency_levels) do |proficiency_level|
  json.extract! proficiency_level, :id
  json.url proficiency_level_url(proficiency_level, format: :json)
end
