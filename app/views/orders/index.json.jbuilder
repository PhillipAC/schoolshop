json.array!(@orders) do |order|
  json.extract! order, :id, :item, :section_id
  json.url order_url(order, format: :json)
end
