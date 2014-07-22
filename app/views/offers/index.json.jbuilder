json.array!(@offers) do |offer|
  json.extract! offer, :id, :name, :description
  json.url offer_url(offer, format: :json)
end
