json.array!(@users) do |user|
  json.extract! user, :id, :name, :password, :sex, :hobby
  json.url user_url(user, format: :json)
end
