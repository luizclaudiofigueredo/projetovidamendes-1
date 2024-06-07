class Visitante < ApplicationRecord

    validates :nome, :telefone, :grupo, presence: true

    validates :telefone, uniqueness: true, if: :new_record?

    validate :unique_nome_completo

    GRUPO = {
        1 => "CRIANÇA",
        2 => "ADOLESCENTE",
        3 => "JOVEM",
        4 => "ADULTO",
        5 => "IDOSO"
    }
      
    def nome_grupo
        if grupo.is_a?(Integer) && GRUPO.key?(grupo)
            "#{grupo} - #{GRUPO[grupo]}"
        else
            grupo.upcase
        end
    end

    def nome_completo
        "#{self.nome} #{self.sobrenome}"
    end

    private

    def unique_nome_completo
      errors.add(:nome_completo, "já está em uso") if new_record? && Visitante.exists?(nome: nome, sobrenome: sobrenome)
    end
 
end
