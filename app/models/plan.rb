class Plan < ApplicationRecord
  belongs_to :empresa
  belongs_to :publication
  belongs_to :servicio
  belongs_to :type_plan
  belongs_to :tipo_cliente
  has_and_belongs_to_many :condition
end

