class Cliente < ActiveRecord::Base
  has_many :facturas, :dependent => :restrict_with_exception #
  validates_presence_of :numero, :nombre, :apellidos
end
