class Review < ApplicationRecord
  belongs_to :list
  validates :content, :rating, presence: true
  validates :rating, inclusion: 0..5, numericality: { only_integer: true }
end
