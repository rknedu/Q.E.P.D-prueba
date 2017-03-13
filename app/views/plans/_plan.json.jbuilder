json.extract! plan, :id, :nombre, :codigo, :precio, :empresa_id, :servicio_id, :type_plan_id, :tipo_cliente_id, :created_at, :updated_at, :state, :necesidad
json.url plan_url(plan, format: :json)