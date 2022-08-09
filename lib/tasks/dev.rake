namespace :dev do


  desc "Configurar o ambiente de desenvolvimento"
  task config: :environment do
    if Rails.env.development?
      mostrar_spinner("Apagando DB ...") do
      %x(rails db:drop)
      end


      mostrar_spinner("Criando DB ...") do
      %x(rails db:create)
      end

      %x(rails dev:schema)

      mostrar_spinner("Migrando DB ...") do
      %x(rails db:migrate)
      end
       
      %x(rails dev:add_tipos_mineracao)
      %x(rails dev:add_moedas)
      %x(rails dev:add_user)

    else
      puts "Você não está em ambiente de desenvolvimento"
    end
  end

desc "Cadastra as moedas"
task add_moedas: :environment do
mostrar_spinner("Cadastrando Moedas...") do
  tm = TipoMineracao.all
  
  Moeda.find_or_create_by!(
      descricao: "Bitcoin",
      acron: "BTC",
      url_img: "https://logospng.org/download/bitcoin/logo-bitcoin-2048.png",
      tipo_mineracao: tm.sample
  )

  Moeda.find_or_create_by!(
      descricao: "Ethereum",
      acron: "ETH",
      url_img: "https://upload.wikimedia.org/wikipedia/commons/b/b7/ETHEREUM-YOUTUBE-PROFILE-PIC.png",
      tipo_mineracao: tm.sample
  )

  Moeda.find_or_create_by!(
      descricao: "Litecoin",
      acron: "LTC",
      url_img: "https://www.spectre.ai/assets/images/assets/LTC-logo.png?v=2.13",
      tipo_mineracao: tm.sample
  )

  Moeda.find_or_create_by!(
    descricao: "BNB",
    acron: "BNB",
    url_img: "https://logospng.org/download/bitcoin/logo-bitcoin-2048.png",
    tipo_mineracao: tm.sample
)

Moeda.find_or_create_by!(
  descricao: "XRP",
  acron: "XRP",
  url_img: "https://logospng.org/download/bitcoin/logo-bitcoin-2048.png",
  tipo_mineracao: tm.sample
)

Moeda.find_or_create_by!(
  descricao: "TRON",
  acron: "TRX",
  url_img: "https://logospng.org/download/bitcoin/logo-bitcoin-2048.png",
  tipo_mineracao: tm.sample
)

Moeda.find_or_create_by!(
  descricao: "Polygon",
  acron: "MATIC",
  url_img: "https://logospng.org/download/bitcoin/logo-bitcoin-2048.png",
  tipo_mineracao: tm.sample
)

Moeda.find_or_create_by!(
  descricao: "Chainlink",
  acron: "LINK",
  url_img: "https://logospng.org/download/bitcoin/logo-bitcoin-2048.png",
  tipo_mineracao: tm.sample
)
end
end


desc "cadastra os Tipos de Mineração"
task add_tipos_mineracao: :environment do
mostrar_spinner("Cadastrando Tipos de Mineração...") do

TipoMineracao.find_or_create_by!(
    descricao: "Proof of Work",
    acron: "Pow",
)

TipoMineracao.find_or_create_by!(
  descricao: "Proof of Stake",
    acron: "PoS",
)

TipoMineracao.find_or_create_by!(
  descricao: "Proof of Capacity",
    acron: "PoC",
)

end
end

desc "cadastra o usuario padrao"
task add_user: :environment do
mostrar_spinner("Cadastrando ADMIN...") do

User.find_or_create_by!(
    email: "danielsfreitas97@gmail.com",
    password_digest: "$2a$12$gwJjp2l..DyVIxur7ZFsgOYKNEY.QXqAK6n5TvNKk6RTm1x1sLmTW",
)


end
end

desc "criar schema"
task schema: :environment do
mostrar_spinner("Criando schema...") do

  ActiveRecord::Base.connection.execute("CREATE SCHEMA crypto")

end
end






  private
  def mostrar_spinner(msg_inicio)
    spinner = TTY::Spinner.new("[:spinner] #{msg_inicio}", format: :pong)
    spinner.auto_spin
    sleep(2)
    yield
    spinner.success("Tarefa executada com sucesso!")
  end


end


