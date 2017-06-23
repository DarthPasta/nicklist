class Task < ApplicationRecord
	validates :description, length: {minimum: 1}
end
