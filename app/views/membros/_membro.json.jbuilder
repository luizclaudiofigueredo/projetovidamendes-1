json.extract! membro, :id, :nome, :sobrenome, :telefone, :endereco, :bairro, :cidade, :data_nascimento, :email, :data_alianca, :data_batismo, :data_desligamento, :observacoes, :situacao, :created_at, :updated_at
json.url membro_url(membro, format: :json)
