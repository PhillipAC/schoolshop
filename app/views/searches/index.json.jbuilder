json.array!(@searches) do |search|
  json.extract! search, :id, :customer, :day, :section_id, :teacher_id
  json.url search_url(search, format: :json)
end
