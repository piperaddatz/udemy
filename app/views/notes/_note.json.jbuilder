json.extract! note, :id, :name, :is_pay, :price, :teacher, :description, :is_video, :preview, :published, :created_at, :updated_at
json.url note_url(note, format: :json)