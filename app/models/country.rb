class Country < ApplicationRecord
  has_many :states, dependent: :destroy
  accepts_nested_attributes_for :states, reject_if: :reject_states, allow_destroy: true

  def reject_states(attributes)
    attributes['name'].blank?
  end
end
