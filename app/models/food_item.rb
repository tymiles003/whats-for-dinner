class FoodItem < ActiveRecord::Base
  has_many :ingredients
  has_many :recipes, through: :ingredients

  validates :name, {presence: true, uniqueness: true}
end
