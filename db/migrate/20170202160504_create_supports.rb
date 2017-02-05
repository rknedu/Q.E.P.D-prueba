class CreateSupports < ActiveRecord::Migration[5.0]
  def change
    create_table :supports do |t|
      t.string :cobro_mantencion
      t.string :tiempo_cobro

      t.timestamps
    end
  end
end
