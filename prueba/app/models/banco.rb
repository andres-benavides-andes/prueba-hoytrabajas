class Banco < ApplicationRecord
  validates :nombre, presence: true, length: {maximum: 50}
end
