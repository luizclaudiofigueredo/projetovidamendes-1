class AddCategoriaToVisitante < ActiveRecord::Migration[7.0]
  def change
    add_column :visitantes, :categoria, :integer, limit: 1, default: 1
  end
end
