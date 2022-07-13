class Membro < ApplicationRecord
    def nome_completo
        nome + ' ' + sobrenome
    end
end
