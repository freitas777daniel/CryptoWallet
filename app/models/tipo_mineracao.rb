class TipoMineracao < ApplicationRecord
    has_many :moedas

    validates_presence_of :descricao, message: 'não pode ficar em branco'
    validates_presence_of :acron, message: 'não pode ficar em branco'
end