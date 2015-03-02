json.array!(@postcards) do |postcard|
  json.extract! postcard, :id, :user_id, :recepient_id, :identifier
  json.url postcard_url(postcard, format: :json)
end
