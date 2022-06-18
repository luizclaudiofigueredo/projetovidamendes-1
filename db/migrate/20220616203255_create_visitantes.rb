class CreateVisitantes < ActiveRecord::Migration[7.0]
  def change
    create_table :visitantes do |t|
      t.string :nome
      t.string :sobrenome
      t.string :telefone
      t.integer :grupo, limit: 1
      t.text :observacoes

      t.timestamps
    end
  end
end
