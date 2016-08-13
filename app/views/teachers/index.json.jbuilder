json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :name, :room
  json.url teacher_url(teacher, format: :json)
end
