# Monta a planilha de teste do 03.09 a partir do modelo do sistema, deixando so a aba Planilha1.
# Uso: python -I ferramentas/montar-xlsx-produtos.py <modelo_produtos.xlsx> <saida.xlsx>
import sys, zipfile, re
from xml.sax.saxutils import escape

src, dst = sys.argv[1], sys.argv[2]
cols = "A B C D E F G H I J K L M N O P Q R S T U V W X Y Z AA AB AC".split()
rows = [
    ["Chá Gelado Lata", "CHA-LATA", "Bebidas", 24, 2.80, 7.00, "", "Não", "", "Unidade", "Não", "Não", "22029900", "0", "5102"],
    ["Cookie de Chocolate", "COOKIE", "Sobremesas", 30, 1.50, 6.50, "", "Não", "", "Unidade", "Não", "Sim", "19053100", "0", "5102"],
    ["Água com Gás", "AGUA-GAS", "Bebidas", 24, 1.10, 4.50, "", "Não", "", "Unidade", "Não", "Não", "22011000", "0", "5102"],
]


def cell(ref, v):
    if v == "":
        return ""
    if isinstance(v, (int, float)):
        return f'<c r="{ref}"><v>{v}</v></c>'
    return f'<c r="{ref}" t="inlineStr"><is><t>{escape(v)}</t></is></c>'


xmlrows = "".join(
    f'<row r="{i}">' + "".join(cell(f"{c}{i}", v) for c, v in zip(cols, r)) + "</row>"
    for i, r in enumerate(rows, start=2)
)
zin = zipfile.ZipFile(src)
zout = zipfile.ZipFile(dst, "w", zipfile.ZIP_DEFLATED)
extras = ("xl/worksheets/sheet2.xml", "xl/worksheets/sheet3.xml")
for item in zin.infolist():
    if item.filename in extras:
        continue
    data = zin.read(item.filename)
    if item.filename in ("xl/workbook.xml", "xl/_rels/workbook.xml.rels", "[Content_Types].xml"):
        s = data.decode("utf-8")
        s = re.sub(r'<sheet name="Planilha[23]"[^>]*/>', "", s)
        s = re.sub(r'<Relationship Id="rId[34]"[^>]*/>', "", s)
        s = re.sub(r'<Override PartName="/xl/worksheets/sheet[23]\.xml"[^>]*/>', "", s)
        data = s.encode("utf-8")
    if item.filename == "xl/worksheets/sheet1.xml":
        s = data.decode("utf-8")
        s = s.replace("</sheetData>", xmlrows + "</sheetData>", 1)
        s = re.sub(r'<dimension ref="[^"]*"/>', '<dimension ref="A1:AC4"/>', s)
        data = s.encode("utf-8")
    zout.writestr(item, data)
zout.close()
print("ok", dst)
