class TastingSheet < ApplicationRecord
  belongs_to :wine
  has_and_belongs_to_many :hues
  has_and_belongs_to_many :appearances
  has_and_belongs_to_many :aroma_elements
  has_and_belongs_to_many :aroma_impressions
  has_and_belongs_to_many :acidities
  has_and_belongs_to_many :balances
  has_and_belongs_to_many :evaluations

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
