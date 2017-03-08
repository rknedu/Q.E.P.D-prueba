class Plan < ApplicationRecord
  belongs_to :servicio, optional: true
  belongs_to :type_plan
  belongs_to :tipo_cliente
  belongs_to :empresa
  has_many :componentes_plans
  has_many :componentes
end

