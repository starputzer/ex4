json.array!(@schedulers) do |scheduler|
  json.extract! scheduler, :starttime, :endtime, :outputdeviceid
  json.url scheduler_url(scheduler, format: :json)
end