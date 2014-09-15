class Producto < ActiveRecord::Base
    belongs_to :cliente
    validates_presence_of :nombre, :precio, :cantidad
    validates_numericality_of :precio, :cantidad
end
