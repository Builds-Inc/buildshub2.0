json.extract! contact, :id, :user_id, :phone, :created_at, :updated_at
json.url contact_url(contact, format: :json)
