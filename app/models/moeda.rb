class Moeda < ApplicationRecord

    belongs_to :tipo_mineracao #, optional: true

    validates_presence_of :descricao, message: 'não pode ficar em branco'
    validates_presence_of :acron, message: 'não pode ficar em branco'
    #validates_presence_of :img_url, message: 'não pode ficar em branco'

    def jonas_esticado
        puts "meu cache é caro"
    end
end