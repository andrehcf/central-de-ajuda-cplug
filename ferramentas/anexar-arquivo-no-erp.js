// Anexa um arquivo (planilha, XML) num campo de upload do ERP pelo navegador interno do Claude,
// que não abre a janela "Escolher arquivo" do Windows.
// 1. Gere o base64 do arquivo:  python -c "import base64,sys;print(base64.b64encode(open(sys.argv[1],'rb').read()).decode())" arquivo.xlsx
// 2. Cole o base64 em B64, ajuste NOME e TIPO, e rode este código com a ferramenta javascript_tool na aba do ERP.
// 3. Clique na área "Escolha os arquivos" da tela: o arquivo entra no lugar da janela do Windows.
const B64 = "COLE_AQUI";
const NOME = "produtos_treinamento.xlsx";
const TIPO = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"; // XML: "text/xml"

const bin = Uint8Array.from(atob(B64), c => c.charCodeAt(0));
const file = new File([bin], NOME, { type: TIPO });
const orig = HTMLInputElement.prototype.click;
HTMLInputElement.prototype.click = function () {
  if (this.type === "file") {
    const dt = new DataTransfer(); dt.items.add(file); this.files = dt.files;
    this.dispatchEvent(new Event("change", { bubbles: true }));
    this.dispatchEvent(new Event("input", { bubbles: true }));
    HTMLInputElement.prototype.click = orig;
    return;
  }
  return orig.call(this);
};
"ok " + bin.length;
