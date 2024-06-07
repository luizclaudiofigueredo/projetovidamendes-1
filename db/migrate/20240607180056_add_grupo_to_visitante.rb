class AddGrupoToVisitante < ActiveRecord::Migration[7.1]
  def change
     remove_column :visitantes, :grupo
     add_belongs_to :visitantes, :grupo
  end
end
