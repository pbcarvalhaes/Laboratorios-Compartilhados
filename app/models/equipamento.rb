class Equipamento < ApplicationRecord
  belongs_to :laboratorio

  has_many :pedidos
end