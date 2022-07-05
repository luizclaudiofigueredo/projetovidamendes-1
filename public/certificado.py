import docx
from docx.shared import Pt
from docx.enum.style import WD_STYLE_TYPE

dir_name = '/var/www/html/projetovidamendes/public/'

doc_name = 'CERTIFICADO_PY.docx'

doc = docx.Document(dir_name + doc_name)

for p in doc.paragraphs:
    if '[nome]' in p.text:
        p.text = p.text.replace("[nome]", "Ariane Antunes da Silva Figueredo")
    if '[instrucao]' in p.text:
        p.text = p.text.replace("[instrucao]", "aliançada")
    if '[instrucao_sm]' in p.text:
        p.text = p.text.replace("[instrucao_sm]", "Aliançada")        
    if '[data]' in p.text:
        p.text = p.text.replace("[data]", "28 de junho de 2022")         
    
doc.styles['Title'].font.name = 'Calibri'
doc.styles['Title'].font.size = Pt(24)

doc.styles['Normal'].font.name = 'Arial Narrow'
doc.styles['Normal'].font.size = Pt(14)
doc.styles['Normal'].font.bold = True

doc.styles['Subtitle'].font.name = 'Arial Narrow'
doc.styles['Subtitle'].font.size = Pt(12)

doc.save(dir_name + 'certificado_ariane' + '.docx')
