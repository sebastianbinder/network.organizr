json.array!(@users) do |user|
  json.extract! user, :id, :firstname, :lastname, :email, :iprange_id
  json.url user_url(user, format: :json)
end
