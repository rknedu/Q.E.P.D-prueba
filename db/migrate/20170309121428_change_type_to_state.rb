class ChangeTypeToState < ActiveRecord::Migration[5.0]
  def change
  	remove_column :plans,:state, :string
  	add_column :plans, :state, :boolean
  end
end
