class CareerInfo < ApplicationRecord
  validates :company, presence: true
  validates :work_function, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  # validates :description, presence: true
end
