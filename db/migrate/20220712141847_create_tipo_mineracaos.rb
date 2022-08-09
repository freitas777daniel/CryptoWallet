class CreateTipoMineracaos < ActiveRecord::Migration[5.2]
  def change
    create_table :tipo_mineracaos do |t|
      t.string :descricao
      t.string :acron

      t.timestamps
    end
  end
end
