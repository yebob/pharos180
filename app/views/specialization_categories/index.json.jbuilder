json.array!(@specialization_categories) do |specialization_category|
  json.extract! specialization_category, :id
  json.url specialization_category_url(specialization_category, format: :json)
end
