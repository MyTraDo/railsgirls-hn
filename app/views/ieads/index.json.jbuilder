json.array!(@ieads) do |iead|
  json.extract! iead, :id, :name, :description, :picture
  json.url iead_url(iead, format: :json)
end
