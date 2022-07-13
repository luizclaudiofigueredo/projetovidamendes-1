class Visitante < ApplicationRecord

    GRUPO = { '1' => "CRIANÇA", 
              '2' => "ADOLESCENTE",
              '3' => "JOVEM",
              '4' => "ADULTO",
              '5' => "IDOSO" }

    def nome_grupo
        GRUPO[self.grupo]
    end

    def nome_completo
        self.nome + ' ' + self.sobrenome
    end
end
