json.extract! evento, :id, :data_evento, :tipo_evento_id, :pessoa_id, :created_at, :updated_at
json.url evento_url(evento, format: :json)
