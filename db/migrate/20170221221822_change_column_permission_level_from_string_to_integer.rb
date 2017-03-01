class ChangeColumnPermissionLevelFromStringToInteger < ActiveRecord::Migration[5.0]
  def change
  	remove_column :usuarios,:pernission_level, :string
  	remove_column :usuarios,:permission_level, :string
  	add_column :usuarios, :permission_level, :integer, default: 1
  end
end
