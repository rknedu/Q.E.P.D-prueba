class Publication < ApplicationRecord
  belongs_to :usuario
  belongs_to :type_publication
end
