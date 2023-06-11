class Paciente < ApplicationRecord
  has_one :endereco
  has_many :medicos
  has_many :consultums
end
