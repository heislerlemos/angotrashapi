class CreateLocalizacaos < ActiveRecord::Migration[8.0]
  def change
    create_table :localizacaos do |t|
      t.string :imagem
      t.string :zona
      t.integer :recolha
      t.integer :postodelixo
      t.string :agentenome1
      t.integer :agentenumero1
      t.string :agentenome2
      t.integer :agentenumero2
      t.string :agentenome3
      t.integer :agentenumero3
      t.string :agentenome4
      t.integer :agentenumero4
      t.string :agentenome5
      t.integer :agentenumero5

      t.timestamps
    end
  end
end
