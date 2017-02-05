class CreateEspacios < ActiveRecord::Migration[5.0]
  def change
    create_table :espacios do |t|
      t.integer :urna_adulto
      t.integer :urna_parvulo
      t.integer :reduccion
      t.integer :Anfora

      t.timestamps
    end
  end
end
