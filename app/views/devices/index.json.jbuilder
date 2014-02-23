json.array!(@devices) do |device|
  json.extract! device, :id, :manufacturer, :macaddress, :type, :ip, :wifi, :vpn, :user_id
  json.url device_url(device, format: :json)
end
