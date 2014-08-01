json.array!(@cards) do |card|
  json.extract! card, :id, :name, :short_desc, :long_desc, :category, :readiness, :photo
  json.url card_url(card, format: :json)
end
