class Academic < ApplicationRecord
  enum done: { Nao_Concluido: 0, Concluido: 1 }
end
