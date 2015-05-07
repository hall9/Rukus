json.array!(@posts) do |post|
  json.extract! post, :id, :content, :User_id, :lat, :long, :votes, :user
  json.url post_url(post, format: :json)
end
