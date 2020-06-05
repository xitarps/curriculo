class Course < ApplicationRecord
  validates :name, presence: true
  validates :school, presence: true
  validates :description, presence: true
  validates :done_when, presence: true
end
