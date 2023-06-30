require 'test_helper'

class MedicoTest < ActiveSupport::TestCase
  def setup
    @medico = Medico.new(nome: "Dr. Adolfo",
                         dataNascimento: Date.new(1980, 1, 1),
                         cpf: "12345678901",
                         email: "adolfo@example.com",
                         especialidade: "Cardiologia",
                         crm: "12345")
  end

  test 'criando medico corretamente' do
    assert @medico.save
  end

  test "nome deve ser obrigatório" do
    @medico.nome = ""
    assert_not @medico.valid?
  end


end
