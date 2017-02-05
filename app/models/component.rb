class Component < ApplicationRecord
  belongs_to :urna
  belongs_to :velatorio
  belongs_to :traslado
  belongs_to :servicio_de_cinerario
  belongs_to :anfora
  belongs_to :burial_service
  belongs_to :espacio
  belongs_to :construction
  belongs_to :location
  belongs_to :support
  belongs_to :plan
  belongs_to :servicio
end
