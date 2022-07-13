json.extract! pessoa, :id, :nome, :sobrenome, :nome_pai, :nome_mae, :telefone, :data_nascimento, :endereco, :bairro, :cidade, :estado, :cep, :email, :created_at, :updated_at
json.url pessoa_url(pessoa, format: :json)
