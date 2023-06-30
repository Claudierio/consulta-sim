require 'test_helper'

class PacienteTest < ActiveSupport::TestCase
  def setup
    @paciente = Paciente.new(
      nome: "João Silva",
      dataNascimento: Date.today,
      cpf: "123456789",
      email: "joao@example.com",
      endereco_attributes: {
        logradouro: "Rua A",
        complemento: "Apartamento 123",
        cep: "12345-678",
        bairro: "Centro",
        cidade: "São Paulo"
      }
    )
  end

  test "deve ser válido" do
    assert @paciente.valid?
  end

  test "dataNascimento deve estar no passado" do
    @paciente.dataNascimento = Date.tomorrow
    assert_not @paciente.valid?
    assert_includes @paciente.errors[:dataNascimento], "não pode ser no futuro"
  end
end
