class CreateAnforas < ActiveRecord::Migration[5.0]
  def change
    create_table :anforas do |t|
      t.string :anfora_y_cobre
      t.string :anfora_cobre

      t.timestamps
    end
  end
end
