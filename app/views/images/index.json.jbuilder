json.array!(@images) do |image|
  json.extract! image, :id, :card_id, :image, :description
  json.url image_url(image, format: :json)
end
