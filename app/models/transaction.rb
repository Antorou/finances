class Transaction < ApplicationRecord
    belongs_to :user
    validates :amount, presence: true, numericality: true
    validates :description, presence: true
    validates :date, presence: true
    validates :category, presence: true
  end
  