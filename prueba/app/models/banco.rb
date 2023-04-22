class Banco < ApplicationRecord
  validates :nombre, presence: true
end
