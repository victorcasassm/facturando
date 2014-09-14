class Detalle < ActiveRecord::Base
  belongs_to :factura
  validates_presence_of :producto, :cantidad
end
