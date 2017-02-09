class DropComponentesTable < ActiveRecord::Migration[5.0]
  def change
  	drop_table :componentes
  end
end
