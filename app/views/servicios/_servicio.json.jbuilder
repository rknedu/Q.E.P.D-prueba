json.extract! servicio, :id, :nombre, :componente_id, :created_at, :updated_at
json.url servicio_url(servicio, format: :json)