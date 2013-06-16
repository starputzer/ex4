json.array!(@outputdevices) do |outputdevice|
  json.extract! outputdevice, :name, :statuso
  json.url outputdevice_url(outputdevice, format: :json)
end