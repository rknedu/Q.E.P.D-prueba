class Sede < ApplicationRecord
  belongs_to :empresa
  belongs_to :comuna
end
