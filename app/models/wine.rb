class Wine < ApplicationRecord
  belongs_to :user
  has_many_attached :images

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :type
  belongs_to :country
  belongs_to :variety
  belongs_to :star

  validates :name, :type_id, :country_id, :star_id, presence: true
end
