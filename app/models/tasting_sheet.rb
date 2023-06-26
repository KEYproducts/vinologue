class TastingSheet < ApplicationRecord
  belongs_to :wine

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :clarity
  belongs_to :brilliance
  belongs_to :depth
  belongs_to :viscosity
  belongs_to :first_impression
  belongs_to :attack
  belongs_to :sweetness
  belongs_to :bitterness
  belongs_to :alcohol
  belongs_to :finish
  belongs_to :serving_temperature
  belongs_to :glass
end
