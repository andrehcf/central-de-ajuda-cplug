# Guia de produção dos manuais

Regras para quem escreve os manuais da Central de Ajuda, pessoa ou Claude. Complementa o `LEIA-ME.md` (estrutura do projeto e lista do que atualizar ao publicar).

**Atenção: este repositório e o site são públicos.** Nada de senha, token, dado real de cliente ou de empresa aqui, nos manuais ou nos prints.

## 1. Para quem escrevemos

O leitor é o **cliente final**, muitas vezes sem nenhum conhecimento técnico. O objetivo dos manuais é que ele resolva sozinho e **não precise abrir chamado no suporte**.

Escreva como um **instrutor sênior** num treinamento: não basta listar cliques; ensine o conceito, o porquê de cada campo, as boas práticas e os erros comuns.

## 2. Testar antes de escrever

- **Só afirme o que foi visto ou testado no ERP.** O que não deu para conferir fica de fora, ou o texto descreve só o que a tela mostra e manda falar com o suporte.
- **Cada opção da tela precisa ser explicada:** o que faz, quando usar e um exemplo. Repetir o rótulo da tela não basta. Para explicar, ligue ou mude a opção, salve, veja o efeito em outras telas (pedidos, vendas, relatórios) e depois volte ao valor original.
- **Aprenda o mecanismo**, não só a tela: o que cada ação grava e como os dados se ligam (ex.: cada entrada de estoque vira um lote com custo próprio; a saída consome os lotes mais antigos).
- **Empresas de teste:**
  - testes que criam dados: empresa **Treinamento**;
  - testes fiscais (emitir, cancelar, inutilizar): só na **Fiscal SUP**, em **Homologação**. Não salve as Configurações fiscais nem os Dados do negócio dela.
- Não troque para a "Versão anterior" do ERP e não use o chat de suporte para testes.
- Não envie e-mails, não crie agendamentos de envio e não baixe arquivos de verdade sem autorização.

## 3. Sem linguagem de teste no texto

O manual é lido pelo cliente. Nada de "no teste", "testamos", "não foi testado", "efeito não confirmado".

- O que foi testado vira **fato** ou **exemplo**: "Exemplo: com 10% de desconto, um X-Burger de R$ 24,90 fica com R$ 2,49 de desconto."
- O registro do que foi e do que não foi testado vai **só na planilha** "Índice dos manuais", na coluna **Observação**, junto com os possíveis bugs encontrados.
- Tabelas: coluna "Exemplo" ou "Na prática", nunca "No teste".
- Dados que aparecem nos prints: nomes realistas ("VIP", "Molho da casa"), não "(teste)".

## 4. Estrutura do manual

Topo do arquivo (frontmatter): `title` ("Como…"), `description`, `codigo` (ex.: `"03.09"`, entre aspas), `modulo`, `tela` (rota do ERP) e `atualizado` (AAAA-MM-DD).

Corpo, nesta ordem:

1. `# Título`
2. `<div class="cplug-meta" markdown>:material-clock-outline: N minutos · :material-format-list-numbered: N passos · :material-calendar-check: Atualizado em DD/MM/AAAA</div>`. O número de passos tem que bater com a quantidade de `##` dentro da `div` de passos.
3. Introdução curta, com um exemplo concreto.
4. `## Entenda o conceito`: o que é, para que serve, os termos-chave (tabela ou lista), como se liga aos outros módulos, quando usar e quando não usar.
5. `!!! info "Antes de começar"` (ou `!!! warning` se houver risco).
6. A frase: "Nos prints, o **quadrado vermelho** mostra onde você deve clicar ou digitar."
7. `<div class="passos" markdown>`, com um `##` por passo, o porquê de cada campo e o print: `![texto alternativo descrevendo o que está marcado](../imagens/<código>/01-nome.png){ loading=lazy }`. Feche com `</div>`.
8. `!!! tip "Boas práticas"`: hábitos de quem usa bem (rotina, conferências, padrões de nome).
9. `## Deu algum problema?`, com `??? question "..."` focados nas dúvidas que viram chamado (resposta recuada 4 espaços).
10. `**Relacionados:**` com links para outros manuais.
11. `<span class="palavras-chave">...</span>`, com as palavras que o cliente usa no dia a dia.

Escrita: uma ação por passo, frases curtas, sem jargão. Botões e telas em **negrito**, escritos exatamente como no sistema. Exemplos concretos (X-Burger, Refrigerante Lata, Bebidas). Assuntos fiscais (NCM, CFOP, CST, CSOSN): explique onde e como preencher e diga que quem define os códigos é o **contador**.

## 5. Prints

- Tire os prints com a tela num tamanho de janela comum, em tema claro.
- As marcações são feitas pelo script `ferramentas/anotar-prints.ps1` (quadrado vermelho; veja `ferramentas/LEIA-ME.md`). Cada pessoa tem a sua lista em `ferramentas/prints/` (`andre.ps1`, `dionatan.ps1`).
- **Dados sensíveis levam tarja cinza sólida** (desfoque não serve, porque fica legível): CNPJ e IE, CSC, nomes de empresas e de pessoas reais, código da empresa, dados de clientes reais. Abra cada print e confira antes de enviar.

## 6. Um escreve, outro revisa

Depois de escrever o manual, peça uma **revisão independente**: outra pessoa ou um agente revisor do Claude. Passe a ele o caminho do arquivo, este guia e um resumo do que foi testado (o que não estiver no resumo conta como não testado). O revisor devolve uma lista de problemas, sem editar:

- erros factuais e afirmações além do que foi testado;
- clareza e tom para leigos;
- padrão e formatação;
- qualquer linguagem de teste no texto.

Aplique o que fizer sentido e registre a revisão na Observação da planilha.

## 7. Publicar

Siga a lista **"Ao publicar um manual novo"** do `LEIA-ME.md`: menu (`mkdocs.yml`), índice do módulo, página inicial (três pontos), build estrito e planilha. Antes de começar cada manual, atualize a sua cópia (`git pull`): mais de uma pessoa mexe no `mkdocs.yml`, nos índices e na página inicial. Envie um manual por vez.

## 8. Manhas do ERP

- O primeiro clique ou a primeira digitação num campo ou janela às vezes é ignorado: confira antes de repetir.
- `Esc` numa janela com dados abre "Alterações não salvas" (Descartar / Continuar editando).
- Campos de valor e porcentagem têm máscara: digitar `1000` vira `10,00`.
- Datas no ERP novo abrem um calendário: escolha o dia no calendário ou digite e saia do campo.
- Algumas telas abrem o tour de boas-vindas: clique em **Pular**.
- O relatório de resultados (DRE) guarda o cálculo de cada período por alguns minutos.
- **Grupos financeiros são compartilhados entre todas as empresas da conta**: não deixe grupo de teste criado.
