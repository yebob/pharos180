json.array!(@specialization_weights) do |specialization_weight|
  json.extract! specialization_weight, :id
  json.url specialization_weight_url(specialization_weight, format: :json)
end
