json.array!(@ip_ranges) do |ip_range|
  json.extract! ip_range, :id, :name, :ipbase
  json.url ip_range_url(ip_range, format: :json)
end
