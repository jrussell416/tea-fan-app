class Shop < ApplicationRecord
    has_many :reviews
    belongs_to :user, optional: true
    has_many :favorite_shops
    has_many :favorited_by, through: :favorite_shops, source: :user
end