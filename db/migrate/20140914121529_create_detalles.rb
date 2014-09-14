class CreateDetalles < ActiveRecord::Migration
  def change
    create_table :detalles do |t|
      t.string :producto
      t.float :precio
      t.float :cantidad
      t.references :factura, index: true

      t.timestamps
    end
  end
end
