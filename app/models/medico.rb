class Medico < ApplicationRecord
  has_many :consultums
  has_many :pacientes
end
