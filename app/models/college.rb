class College < ApplicationRecord
	has_many :students
	accepts_nested_attributes_for :students ,allow_destroy: true
end
