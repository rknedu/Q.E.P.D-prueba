class CreateServicioDeCinerarios < ActiveRecord::Migration[5.0]
  def change
    create_table :servicio_de_cinerarios do |t|
      t.string :capilla
      t.string :sala_de_velatorio
      t.string :podium
      t.string :liturgia
      t.string :amplificacion
      t.string :diacono
      t.integer :coro
      t.string :cafeteria
      t.string :ceremonia_entre_cenizas
      t.string :anfora_incluida

      t.timestamps
    end
  end
end
