class CreateTipoEventos < ActiveRecord::Migration[7.0]
  def change
    create_table :tipo_eventos do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
