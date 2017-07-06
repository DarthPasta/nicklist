class Task < ApplicationRecord
	belongs_to :user
	validates :description, length: {minimum: 1, maximum: 80}

end
