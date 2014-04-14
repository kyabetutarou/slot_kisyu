json.array!(@slot_names) do |slot_name|
  json.extract! slot_name, :id, :name, :img, :dounyuu, :setumei
  json.url slot_name_url(slot_name, format: :json)
end
