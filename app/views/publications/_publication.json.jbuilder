json.extract! publication, :id, :fecha, :estado, :usuario_id, :type_publication_id, :created_at, :updated_at
json.url publication_url(publication, format: :json)