class DropFormasDePago < ActiveRecord::Migration[5.0]
  def change
    drop_table :formas_de_pagos
  end
end
