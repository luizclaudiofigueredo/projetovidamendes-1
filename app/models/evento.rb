class Evento < ApplicationRecord
  belongs_to :tipo_evento
  belongs_to :pessoa
end
