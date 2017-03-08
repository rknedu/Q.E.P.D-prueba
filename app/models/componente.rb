class Componente < ApplicationRecord
  belongs_to :servicio
  has_many :atributos_componentes
  has_many :images 
  belongs_to :plan

end
