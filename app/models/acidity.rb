class Acidity < ApplicationRecord
  has_and_belongs_to_many :tasting_sheets
end