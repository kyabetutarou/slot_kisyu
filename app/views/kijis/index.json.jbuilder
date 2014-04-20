json.array!(@kijis) do |kiji|
  json.extract! kiji, :id, :slot_name_id, :title, :body
  json.url kiji_url(kiji, format: :json)
end
