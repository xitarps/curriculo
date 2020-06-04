class Language < ApplicationRecord
  validates :institution, presence: true
  validates :language, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :level, presence: true
end
