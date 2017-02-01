class AddUserToRoleAndCreateDateUser < ActiveRecord::Migration[5.0]
  def change
    add_column :usuarios, :apellido, :string
    add_reference :usuarios, :role, foreign_key: true
  end
end
