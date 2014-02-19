json.array!(@users) do |user|
  json.extract! user, :id, :grade, :type, :info, :name, :password, :salt, :email
  json.url user_url(user, format: :json)
end
