json.extract! topic, :id, :name, :note_id, :sort, :price, :created_at, :updated_at
json.url topic_url(topic, format: :json)