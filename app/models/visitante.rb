class Visitante < ApplicationRecord

    before_validation :sanitize_telefone

    validate :validate_unique_telefone
    validates :nome, :telefone, :grupo, presence: true   
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

    def sanitize_telefone
        # Remove characters like parentheses and hyphens from telefone
        self.telefone = telefone.gsub(/[\(\)\s-]/, '') if telefone.present?
    end

    def validate_unique_telefone
        # Check uniqueness of telefone after sanitizing
        if telefone.present? && self.class.where.not(id: id).exists?(telefone: telefone)
            errors.add(:telefone, 'has already been taken')
        end
    end    
 
end
