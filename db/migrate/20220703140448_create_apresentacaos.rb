class CreateApresentacaos < ActiveRecord::Migration[7.0]
  def change
    create_table :apresentacaos do |t|
      t.string :nome_bebe
      t.string :nome_mae
      t.string :nome_pai
      t.string :data_nascimento
      t.integer :sexo, limit: 1
      t.date :data_apresentacao

      t.timestamps
    end
  end
end
