json.extract! servicio, :id, :nombre, :tipo_empresa_id, :created_at, :updated_at
json.url servicio_url(servicio, format: :json)