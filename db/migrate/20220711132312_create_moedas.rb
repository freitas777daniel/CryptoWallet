class CreateMoedas < ActiveRecord::Migration[5.2]
  def change
    create_table :moedas do |t|
      t.string :descricao
      t.string :acron
      t.string :url_img

      t.timestamps
    end
  end
end
