json.array!(@skill_cats) do |skill_cat|
  json.extract! skill_cat, :id
  json.url skill_cat_url(skill_cat, format: :json)
end
