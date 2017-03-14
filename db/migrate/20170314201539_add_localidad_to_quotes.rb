class AddLocalidadToQuotes < ActiveRecord::Migration[5.0]
  def change
  	add_column :quotes, :localidad, :string
  end
end
