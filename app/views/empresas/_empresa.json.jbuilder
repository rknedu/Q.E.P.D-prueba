json.extract! empresa, :id, :nombre, :rut, :email, :created_at, :updated_at, :usuario_id, :tipo_empresa_id, :cover
json.url empresa_url(empresa, format: :json)