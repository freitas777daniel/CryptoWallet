json.extract! moeda, :id, :descricao, :acron, :url_img, :created_at, :updated_at
json.url moeda_url(moeda, format: :json)
