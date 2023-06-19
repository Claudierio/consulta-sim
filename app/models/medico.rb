class Medico < ApplicationRecord
  has_many :consultas, class_name: 'Consultum'
  has_many :pacientes, through: :consultas

  validates :nome, presence: true, length: {in: 5..40}
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :especialidade, presence: true, length: {in: 4..20}
  validates :crm, presence: true, length: {in: 4..10}, numericality: {only_integer: true}

end