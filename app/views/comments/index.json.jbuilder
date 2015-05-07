json.array!(@comments) do |comment|
  json.extract! comment, :id, :content, :Post_id
  json.url comment_url(comment, format: :json)
end
