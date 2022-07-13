class CreatePessoas < ActiveRecord::Migration[7.0]
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :sobrenome
      t.string :nome_pai
      t.string :nome_mae
      t.string :telefone
      t.date :data_nascimento
      t.string :endereco
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :cep
      t.string :email

      t.timestamps
    end
  end
end
