class CreateFacturas < ActiveRecord::Migration
  def change
    create_table :facturas do |t|
      t.timestamp :fecha
      t.references :cliente, index: true

      t.timestamps
    end
  end
end
