class Cliente < ActiveRecord::Base
  has_many :prodcutos, :dependent => :restrict_with_exception # raises
  validates_presence_of :numero, :nombre, :apellidos
end
