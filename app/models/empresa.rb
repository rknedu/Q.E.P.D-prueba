class Empresa < ApplicationRecord
	belongs_to :tipo_empresa
	has_many :plans
	has_many :sedes
	belongs_to :usuario

	has_attached_file :cover, styles: {medium: "1280x720", thumb:"800x400", minimum:"400x200"}
  	validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
end
