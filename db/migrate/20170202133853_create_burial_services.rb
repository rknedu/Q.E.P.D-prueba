class CreateBurialServices < ActiveRecord::Migration[5.0]
  def change
    create_table :burial_services do |t|
      t.string :capilla
      t.string :sala_de_velatorio
      t.string :liturgia
      t.integer :toldo
      t.integer :silla
      t.string :amplificacion
      t.string :diacono
      t.integer :coro
      t.string :cafeteria

      t.timestamps
    end
  end
end
