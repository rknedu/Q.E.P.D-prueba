class AddMensajeToQuotes < ActiveRecord::Migration[5.0]
  def change
  	add_column :quotes, :mensaje, :string
  end
end
