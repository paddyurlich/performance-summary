json.array!(@statistcs) do |statistc|
  json.extract! statistc, :id, :callname, :date, :accessability, :retainability
  json.url statistc_url(statistc, format: :json)
end
