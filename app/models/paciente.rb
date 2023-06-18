class Paciente < ApplicationRecord
  has_one :endereco, dependent: :destroy
  accepts_nested_attributes_for :endereco, allow_destroy: true
  has_many :consultums
  has_many :medicos, through: :consultums

  validates :nome, presence: true, length: { in: 5..40 }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validate :data_nascimento_valida
  validates :cpf, presence: true, uniqueness: true, length: {is: 11}, numericality: { only_integer:true }

  def data_nascimento_valida
    if dataNascimento.present? && dataNascimento > Date.today
      errors.add(:data_nascimento, "não pode ser no futuro")
    end
  end
end
