json.array!(@systems) do |system|
  json.extract! system, :systemode, :systemtime, :maxoutputdevice
  json.url system_url(system, format: :json)
end