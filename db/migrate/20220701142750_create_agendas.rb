class CreateAgendas < ActiveRecord::Migration[7.0]
  def change
    create_table :agendas do |t|
      t.string :titulo
      t.text :descricao
      t.datetime :datahora_inicio
      t.datetime :datahora_termino
      t.integer :vagas, default: 0
      t.decimal :valor, precision: 12, scale: 2, default: 0
      t.string :link_inscricao

      t.timestamps
    end
  end
end
