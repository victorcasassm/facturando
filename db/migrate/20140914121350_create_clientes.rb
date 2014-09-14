class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.integer :numero
      t.string :nombre
      t.string :apellidos
      t.string :comentarios

      t.timestamps
    end
  end
end
