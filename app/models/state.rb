class State < ApplicationRecord
  belongs_to :country
  validates :name ,presence:{message:'campo requerido'}

  def to_s
    name
  end
end
