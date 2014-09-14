class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :nombre
      t.float :precio
      t.float :cantidad
      t.string :comentarios
      t.timestamp :fecha

      t.timestamps
    end
  end
end
