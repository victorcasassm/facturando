json.array!(@productos) do |producto|
  json.extract! producto, :id, :nombre, :precio, :cantidad, :comentarios, :fecha
  json.url producto_url(producto, format: :json)
end
