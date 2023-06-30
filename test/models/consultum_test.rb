require 'test_helper'

class ConsultumTest < ActiveSupport::TestCase
  def setup
    @consultum = Consultum.new(data: Date.today, horario: "08:00")
  end

  test "data não deve estar no passado" do
    @consultum.data = Date.yesterday
    assert_not @consultum.valid?
    assert_includes @consultum.errors[:data], "não pode ser no passado"
  end

  test "horario deve ser valido" do
    @consultum.horario = "13:00"
    assert_not @consultum.valid?
    assert_includes @consultum.errors[:horario], "horário inválido"
  end
end
