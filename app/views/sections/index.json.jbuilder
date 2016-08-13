json.array!(@sections) do |section|
  json.extract! section, :id, :time, :name
  json.url section_url(section, format: :json)
end
