json.array!(@kaisekis) do |kaiseki|
  json.extract! kaiseki, :id, :title, :kiji, :slot_name_id
  json.url kaiseki_url(kaiseki, format: :json)
end
