class Plan < ApplicationRecord
  belongs_to :servicio, optional: true
  belongs_to :type_plan
  belongs_to :tipo_cliente
  belongs_to :empresa
end

