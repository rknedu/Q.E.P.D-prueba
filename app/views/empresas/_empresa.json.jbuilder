json.extract! empresa, :id, :nombre, :ubicacion, :email, :created_at, :updated_at
json.url empresa_url(empresa, format: :json)