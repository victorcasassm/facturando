json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :numero, :nombre, :apellidos, :comentarios
  json.url cliente_url(cliente, format: :json)
end
