class Condition < ApplicationRecord
  belongs_to :formas_de_pago
  has_and_belongs_to_many :plan
end
