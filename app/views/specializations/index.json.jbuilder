json.array!(@specializations) do |specialization|
  json.extract! specialization, :id
  json.url specialization_url(specialization, format: :json)
end
