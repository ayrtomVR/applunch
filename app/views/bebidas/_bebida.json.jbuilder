json.extract! bebida, :id, :nombre, :descripcion, :imagen, :estado, :created_at, :updated_at
json.url bebida_url(bebida, format: :json)
