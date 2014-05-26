json.array!(@skill_relevances) do |skill_relevance|
  json.extract! skill_relevance, :id
  json.url skill_relevance_url(skill_relevance, format: :json)
end
