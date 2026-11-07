# Central de Ajuda CPlug

Site de manuais para os clientes da CPlug. Cada manual é um arquivo de texto (Markdown) em `docs/`, e o site é gerado com o [MkDocs Material](https://squidfunk.github.io/mkdocs-material/).

## Onde fica cada coisa

| Pasta ou arquivo | O que tem |
|---|---|
| `docs/<módulo>/<manual>.md` | Os manuais. O caminho vira o endereço no site: `docs/produtos/cadastrar-produto.md` → `/produtos/cadastrar-produto/` |
| `docs/imagens/<código>/` | Os prints de cada manual, já com as marcações vermelhas. Ex.: `docs/imagens/03.04/` |
| `docs/stylesheets/cplug.css` | Cores, fonte e componentes do manual de identidade |
| `overrides/` | Página inicial (`home.html`) e o selo com o código do manual (`main.html`) |
| `mkdocs.yml` | Configuração e o menu lateral (`nav`) |
| `.github/workflows/publicar.yml` | Publica o site sozinho a cada envio para a branch `main` |

## Padrão de cada manual

O topo do arquivo tem os dados do manual, que precisam bater com a planilha "Índice dos manuais" no Drive:

```yaml
---
title: Como cadastrar um produto
description: Uma frase sobre o que o manual ensina.
codigo: "03.04"          # módulo.ordem, entre aspas
modulo: Produtos
tela: /dashboard/catalog/products/new   # tela do ERP, para a ajuda contextual
atualizado: 2026-10-29
---
```

A estrutura é sempre esta: introdução curta, "Antes de começar" (quando houver), passos dentro de `<div class="passos" markdown>` (cada `##` vira um passo numerado), "Como saber que deu certo", "Deu algum problema?" e, no fim, uma linha `palavras-chave` com as palavras que o cliente usa no dia a dia, para a busca achar.

Regras de escrita: títulos começam com "Como…", uma ação por passo, frases curtas, sem termos técnicos, e todo print com texto alternativo descrevendo o que está marcado.

## Ao publicar um manual novo

Além do arquivo do manual e dos prints, atualize sempre:

1. **`mkdocs.yml`**: o manual no `nav`, na ordem do código.
2. **`docs/<módulo>/index.md`**: a linha do manual na lista do módulo.
3. **`overrides/home.html`** (página inicial), em três pontos:
    - **a contagem do módulo** no bloco "Já uso o sistema" (`.cplug-modulos-mini`, ex.: "11 manuais");
    - **a lista "Atualizados recentemente"**: o manual novo entra no topo e a lista fica sempre com os 3 mais recentes;
    - **o passo 06 do roteiro "Monte sua loja em 6 passos"**: quando sair o manual de abrir o caixa, troque o "em breve" por um link para ele.

    Se o manual for uma tarefa comum do dia a dia, avalie também colocá-lo num dos cartões de "O que você quer fazer?".
4. **Planilha "Índice dos manuais"**: status, endereço, tela, data e observação.

Antes de enviar, rode o build estrito (`.venv\Scripts\mkdocs build --strict`): ele acusa link quebrado e página fora do menu.

## Ver o site no computador

```bash
.venv\Scripts\mkdocs serve
```

Depois abra http://127.0.0.1:8000.

## Publicar

Basta enviar as alterações para a branch `main` do GitHub. O GitHub Actions gera o site e publica na branch `gh-pages` em cerca de 1 minuto. Uma correção pequena também pode ser feita direto no GitHub, pelo lápis de edição de cada manual.
