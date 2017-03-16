json.extract! contacto, :id, :nombre, :direccion, :fono, :email, :nombre_de_contacto, :created_at, :updated_at, :tipo_empresa_id
json.url contacto_url(contacto, format: :json)