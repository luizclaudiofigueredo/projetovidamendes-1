json.extract! visitante, :id, :nome, :sobrenome, :telefone, :grupo, :observacoes, :created_at, :updated_at
json.url visitante_url(visitante, format: :json)
