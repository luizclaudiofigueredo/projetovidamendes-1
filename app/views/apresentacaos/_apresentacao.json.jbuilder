json.extract! apresentacao, :id, :nome_bebe, :nome_mae, :nome_pai, :data_nascimento, :sexo, :data_apresentacao, :created_at, :updated_at
json.url apresentacao_url(apresentacao, format: :json)
