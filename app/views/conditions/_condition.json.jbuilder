json.extract! condition, :id, :nombre, :descripcion, :solucion, :created_at, :updated_at
json.url condition_url(condition, format: :json)