# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cadastrando moedas padrões..."

Moeda.find_or_create_by!(
    descricao: "Bitcoin",
    acron: "BTC",
    url_img: "https://logospng.org/download/bitcoin/logo-bitcoin-2048.png"
)

Moeda.find_or_create_by!(
    descricao: "Ethereum",
    acron: "ETH",
    url_img: "https://upload.wikimedia.org/wikipedia/commons/b/b7/ETHEREUM-YOUTUBE-PROFILE-PIC.png"
)

Moeda.find_or_create_by!(
    descricao: "Litecoin",
    acron: "LTC",
    url_img: "https://www.spectre.ai/assets/images/assets/LTC-logo.png?v=2.13"
)

puts "Moedas cadastradas com sucesso..."