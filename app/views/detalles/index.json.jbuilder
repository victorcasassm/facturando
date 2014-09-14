json.array!(@detalles) do |detalle|
  json.extract! detalle, :id, :producto, :precio, :cantidad, :factura_id
  json.url detalle_url(detalle, format: :json)
end
