json.array!(@courses) do |course|
  json.extract! course, :id, :teacher, :photo, :title, :gpa, :grade, :intro_text, :gp_text, :difficulty_text, :features_text
  json.url course_url(course, format: :json)
end
