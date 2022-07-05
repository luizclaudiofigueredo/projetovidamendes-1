class Apresentacao < ApplicationRecord
    SEXO = {1 => "Masculino", 2 => "Feminino" }

    def sexo_crianca
        SEXO[self.sexo]
    end
end
