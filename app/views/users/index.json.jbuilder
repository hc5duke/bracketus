json.array!(@users) do |user|
  json.extract! user, :id, :email, :first, :last
  json.url user_url(user, format: :json)
end
