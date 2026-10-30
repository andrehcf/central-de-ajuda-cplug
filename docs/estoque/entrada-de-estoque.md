---
title: Como dar entrada no estoque
description: Registre a entrada (ou a saída) de mercadorias no estoque sem nota fiscal - estoque inicial, ajustes, devoluções - com quantidade e custo.
codigo: "04.01"
modulo: Estoque
tela: /dashboard/stock/stocks
atualizado: 2026-10-30
---

# Como dar entrada no estoque

<div class="cplug-meta" markdown>:material-clock-outline: 5 minutos · :material-format-list-numbered: 5 passos · :material-calendar-check: Atualizado em 30/10/2026</div>

Use este manual para lançar mercadorias no estoque **sem nota fiscal de compra**. Exemplos:

- o **estoque inicial**, quando a loja começa a usar o sistema;
- um **ajuste** depois de achar mercadoria a mais;
- uma **devolução** de cliente.

!!! tip "Comprou com nota fiscal?"
    Se a mercadoria veio com nota do fornecedor, não lance à mão: **importe o XML da nota**. Assim entram também o custo, o fornecedor e a conta a pagar. Veja [Como importar a nota fiscal de compra (XML)](importar-nota-de-compra.md).

Neste exemplo damos o **estoque inicial** dos ingredientes do X-Burger: 100 pães, 100 hambúrgueres, 200 fatias de queijo e 100 porções de molho.

Nos prints, o **quadrado vermelho** mostra onde você deve clicar ou digitar.

<div class="passos" markdown>

## Abra o registro de entrada

No menu do lado esquerdo, clique em **Estoque** e depois em **Estoque**. Na linha do estoque (por exemplo, "Estoque 1"), clique nos **três pontinhos** e depois em **Registrar entrada**.

![Lista de estoques com o menu aberto e a opção Registrar entrada destacada](../imagens/04.01/01-menu-estoque.png){ loading=lazy }

No mesmo menu ficam **Registrar saída**, **Balanço** (o saldo) e **Inventários** (a contagem).

## Escolha o tipo, a categoria e a data

- **Tipo de movimentação:** **Entrada de estoque**. (Para tirar mercadoria, use **Saída de estoque**.)
- **Categoria de movimentação:** o motivo da entrada. As mais usadas:
    - **Quant. Inicial:** o estoque inicial da loja;
    - **Ajustes de Estoque:** correções do dia a dia;
    - **Compra:** compra sem nota fiscal;
    - **Devolução:** mercadoria que voltou de um cliente;
    - **Produção:** produto feito na própria loja.
- **Data da operação:** vem com a data de hoje.

![Tipo de movimentação, lista de categorias com Quant. Inicial e Data da operação destacados](../imagens/04.01/02-categorias.png){ loading=lazy }

## Adicione os produtos

Em **Produtos**, clique em **Pesquisar**, digite parte do nome e clique no produto. Repita para cada produto. Para cada um, preencha:

- **Quantidade:** quanto está entrando. A coluna **Saldo** mostra quanto havia antes.
- **Preço de custo:** quanto custou cada unidade. Esse valor é usado no cálculo do custo e do lucro.

![Pesquisa de produtos e os quatro insumos com Quantidade e Preço de custo preenchidos, e o botão Salvar destacados](../imagens/04.01/03-produtos.png){ loading=lazy }

## Salve a entrada

Clique em **Salvar**, no canto de baixo, à direita. O sistema volta para a lista de estoques.

## Confira o saldo

Nos **três pontinhos** do estoque, clique em **Balanço**. Os produtos aparecem com a nova quantidade.

![Balanço do estoque com os saldos dos insumos atualizados destacados](../imagens/04.01/04-saldo.png){ loading=lazy }

</div>

!!! warning "Estoque inicial é o primeiro passo do inventário"
    O inventário só consegue ajustar produtos que **já tiveram alguma movimentação**. Por isso, ao começar a usar o sistema, dê sempre a **entrada inicial** (categoria **Quant. Inicial**) antes de fazer inventários. Veja [Como fazer um inventário](inventario.md).

## Deu algum problema?

??? question "O produto não aparece na pesquisa"
    Confira se ele está cadastrado na **mesma loja** e com **Controlar quantidade em estoque** ligado no cadastro do produto.

??? question "Lancei a quantidade errada"
    Abra o histórico do produto (Balanço → três pontinhos → **Movimentações**) e cancele o lançamento errado. Depois, lance de novo. Veja [Como consultar o saldo e o histórico do estoque](saldo-do-estoque.md).

??? question "Quero tirar mercadoria (perda, quebra, consumo)"
    Use **Registrar saída**, no mesmo menu do estoque, e escolha a categoria que explica o motivo.

**Relacionados:** [Como fazer um inventário](inventario.md) · [Como consultar o saldo e o histórico do estoque](saldo-do-estoque.md) · [Como importar a nota fiscal de compra (XML)](importar-nota-de-compra.md)

<span class="palavras-chave">entrada de estoque estoque inicial quantidade inicial registrar entrada registrar saída ajuste de estoque movimentação devolução produção preço de custo lançar estoque sem nota categoria de movimentação</span>
