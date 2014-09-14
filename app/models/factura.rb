class Factura < ActiveRecord::Base
  belongs_to :cliente
  validates_presence_of :cliente
end
