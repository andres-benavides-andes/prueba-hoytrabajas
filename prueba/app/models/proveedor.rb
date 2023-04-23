class Proveedor < ApplicationRecord
  belongs_to :banco
  validates :nit, format: { with: /\A\d{9}-?\d?\z/, message: "El formato del NIT no es válido" }
  validates :celular, length: {maximum: 10}
  validates :numero_cuenta, length: {maximum: 15  }
  validates :nombre, presence: true
  validates :contacto, presence: true
end
