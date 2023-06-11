class CreateConsulta < ActiveRecord::Migration[7.0]
  def change
    create_table :consulta do |t|
      t.date :data
      t.string :horario
      t.string :medico
      t.string :paciente

      t.timestamps
    end
  end
end
