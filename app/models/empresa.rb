class Empresa < ApplicationRecord
	belongs_to :tipo_empresa
	belongs_to :usuario, optional: true
end
