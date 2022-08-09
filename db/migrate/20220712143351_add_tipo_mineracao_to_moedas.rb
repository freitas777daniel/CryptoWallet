class AddTipoMineracaoToMoedas < ActiveRecord::Migration[5.2]
  def change
    add_reference :moedas, :tipo_mineracao, foreign_key: true
  end
end
