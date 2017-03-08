class Empresa < ApplicationRecord
	belongs_to :tipo_empresa
	belongs_to :plan
	has_many :sedes
	belongs_to :usuario, optional: true

	has_attached_file :cover, styles: {medium: "1280x720", thumb:"800x400", minimum:"400x200"}
  	validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
end
