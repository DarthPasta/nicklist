class Task < ApplicationRecord
	belongs_to :user

	validates :description, length: {minimum: 1}
	validates :username, presence: true, length: {maximum: 15}
	validates :name, presence: true, length: {maximum: 20}
end
