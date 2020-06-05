class Academic < ApplicationRecord
  enum done: { Nao_Concluido: 0, Concluido: 1 }
  validates :institution, presence: true
  validates :course, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :done, presence: true
end
