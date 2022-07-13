class AddObservacaoToEvento < ActiveRecord::Migration[7.0]
  def change
    add_column :eventos, :observacoes, :text
  end
end
