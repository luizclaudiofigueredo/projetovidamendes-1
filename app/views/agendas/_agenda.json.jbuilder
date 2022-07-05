json.extract! agenda, :id, :titulo, :descricao, :datahora_inicio, :datahora_termino, :vagas, :valor, :link_inscricao, :created_at, :updated_at
json.url agenda_url(agenda, format: :json)
