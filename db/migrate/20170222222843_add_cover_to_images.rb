class AddCoverToImages < ActiveRecord::Migration[5.0]
  def change
  	add_attachment :images,:cover
  end
end
