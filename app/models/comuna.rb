class Comuna < ApplicationRecord
  belongs_to :region
  has_many :sedes
end
