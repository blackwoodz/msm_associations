class Movie < ApplicationRecord
  validates :director_id, :title, presence: true
  validates :year, numericality: {greater_than: 1870, less_than: 2050}, on: :update
  validates :duration, numericality: {greater_than: 0, less_than: 2764800}, on: :update

  belongs_to :director

  has_many :characters
  has_many :actors, through: :characters
end
