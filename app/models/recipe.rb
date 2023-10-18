class Recipe < ApplicationRecord
  belongs_to :user, optional: true
  validates :name, presence: true
  validates :recipe_type, presence: true

  has_many :favorite_recipes
  has_many :favorited_by, through: :favorite_recipes, source: :user
  has_rich_text :instructions
end
