json.extract! subtopic, :id, :name, :topic_id, :sort, :is_demo, :created_at, :updated_at
json.url subtopic_url(subtopic, format: :json)