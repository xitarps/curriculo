json.extract! course, :id, :school, :name, :description, :done_when, :certificate, :created_at, :updated_at
json.url course_url(course, format: :json)
