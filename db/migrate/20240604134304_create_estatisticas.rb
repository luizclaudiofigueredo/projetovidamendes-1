class CreateEstatisticas < ActiveRecord::Migration[7.1]
  def change
    create_table :estatisticas do |t|
      t.string :tema_culto
      t.date :data_culto
      t.integer :total_presentes
      t.integer :total_visitantes
      t.integer :total_conversoes
      t.integer :total_aliancados
      t.integer :total_batismos
      t.integer :total_criancas
      t.text :observacoes

      t.timestamps
    end
  end
end
