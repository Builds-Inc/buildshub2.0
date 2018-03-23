json.extract! student, :id, :username, :birth, :graduate, :experience, :created_at, :updated_at
json.url student_url(student, format: :json)
