class Factura < ActiveRecord::Base
  belongs_to :cliente
  validates_presence_of :cliente
  has_many :detalle, :dependent => :restrict_with_exception #
  
end
