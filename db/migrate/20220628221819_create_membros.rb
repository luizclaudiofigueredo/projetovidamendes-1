class CreateMembros < ActiveRecord::Migration[7.0]
  def change
    create_table :membros do |t|
      t.string :nome
      t.string :sobrenome
      t.string :telefone
      t.string :endereco
      t.string :bairro
      t.string :cidade
      t.date :data_nascimento
      t.string :email
      t.date :data_alianca
      t.date :data_batismo
      t.date :data_desligamento
      t.text :observacoes
      t.integer :situacao, limit: 1

      t.timestamps
    end
  end
end
