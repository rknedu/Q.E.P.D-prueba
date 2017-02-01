class Plan < ApplicationRecord
  belongs_to :publication
  belongs_to :servicio
  belongs_to :type_plan
  belongs_to :tipo_cliente
end
