json.array!(@ideas) do |idea|
  json.extract! idea, :title, :content
  json.url idea_url(idea, format: :json)
end
