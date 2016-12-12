class Recipe < ApplicationRecord
  # belongs_to :user

  # https://www.sitepoint.com/better-nested-attributes-in-rails-with-the-cocoon-gem/
  has_many :ingredients, dependent: :destroy, inverse_of: :recipe
  has_many :directions,  dependent: :destroy, inverse_of: :recipe

  accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy:true
  accepts_nested_attributes_for :directions, reject_if: :all_blank, allow_destroy:true

  has_attached_file :image, styles: { medium: '400x400#', thumb:' 100x100#' }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :title, :description, presence:true
  validates :image, presence:true, on: :create # if image.empty?
end
