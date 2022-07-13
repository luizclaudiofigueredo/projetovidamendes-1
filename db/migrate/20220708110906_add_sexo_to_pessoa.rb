class AddSexoToPessoa < ActiveRecord::Migration[7.0]
  def change
    add_column :pessoas, :sexo, :integer, limit: 1
  end
end
