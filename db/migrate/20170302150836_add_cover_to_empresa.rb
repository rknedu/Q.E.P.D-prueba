class AddCoverToEmpresa < ActiveRecord::Migration[5.0]
  def change
  	add_attachment :empresas,:cover
  end
end
