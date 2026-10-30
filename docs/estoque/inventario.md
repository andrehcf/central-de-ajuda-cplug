---
title: Como fazer um inventário
description: Conte o estoque físico e ajuste o saldo do sistema, com a diferença calculada automaticamente para cada produto.
codigo: "04.02"
modulo: Estoque
tela: /dashboard/stock/stocks
atualizado: 2026-10-30
---

# Como fazer um inventário

<div class="cplug-meta" markdown>:material-clock-outline: 10 minutos · :material-format-list-numbered: 7 passos · :material-calendar-check: Atualizado em 30/10/2026</div>

O **inventário** é a contagem do que existe de verdade na loja. Você informa a quantidade contada, o sistema mostra a **diferença** em relação ao saldo e, ao finalizar, **ajusta o estoque** para a quantidade contada.

Faça inventários com frequência (por exemplo, no fim do mês) para manter o estoque certo.

!!! danger "O inventário só ajusta produtos que já tiveram movimentação"
    Se um produto **nunca teve entrada** no estoque, o inventário é finalizado, mas **o saldo dele não muda**. Antes do primeiro inventário, dê a **entrada inicial** desses produtos: veja [Como dar entrada no estoque](entrada-de-estoque.md).

Neste exemplo contamos o **Pão de hambúrguer**: o sistema dizia 100, mas na prateleira havia 95.

Nos prints, o **quadrado vermelho** mostra onde você deve clicar ou digitar.

<div class="passos" markdown>

## Abra os inventários do estoque

No menu do lado esquerdo, clique em **Estoque** e depois em **Estoque**. Na linha do estoque, clique nos **três pontinhos** e depois em **Inventários**.

![Menu do estoque com a opção Inventários destacada](../imagens/04.02/01-menu.png){ loading=lazy }

A tela mostra os inventários **Em aberto** (em contagem) e os **Finalizados**. Clique em **Novo inventário**.

![Tela Inventário com as abas Em aberto e Finalizados e o botão Novo inventário destacados](../imagens/04.02/02-inventario.png){ loading=lazy }

## Dê um nome ao inventário

Digite um nome que ajude a encontrar depois. Exemplo: "Contagem de insumos - outubro". Clique em **Confirmar**.

![Janela Criar novo inventário com o nome e o botão Confirmar destacados](../imagens/04.02/03-nome.png){ loading=lazy }

## Abra o inventário

Na lista **Em aberto**, clique nos **três pontinhos** do inventário e depois em **Produtos**.

![Menu do inventário com a opção Produtos destacada](../imagens/04.02/04-menu-produtos.png){ loading=lazy }

Leia o aviso amarelo no topo e clique em **Adicionar produto**.

![Aviso sobre produtos com movimentação e o botão Adicionar produto destacados](../imagens/04.02/05-aviso.png){ loading=lazy }

## Escolha os produtos que vai contar

Use a busca ou a categoria para filtrar, marque a caixinha de cada produto e clique em **Adicionar ao inventário**, no rodapé.

![Busca de produtos e a caixinha do Pão de hambúrguer destacadas](../imagens/04.02/06-adicionar.png){ loading=lazy }

Se forem muitos produtos, use **Importar produtos** (planilha) ou **Exportar produtos** para imprimir a lista e contar no papel.

## Informe a quantidade contada

Para cada produto:

- **Saldo:** quanto o sistema diz que tem.
- **Novo saldo:** quanto você **contou**.
- **Custo Unitário:** o custo de cada unidade.
- **Diferença:** calculada sozinha. Negativa quando falta mercadoria; positiva quando sobra.
- **Atualizar custo:** marque se quiser que o custo informado passe a valer para o produto.

![Linha do produto com Saldo 100, Novo saldo 95, Custo, Diferença -5 e os botões Salvar e Finalizar destacados](../imagens/04.02/07-contagem.png){ loading=lazy }

Para parar e continuar depois, clique em **Salvar**: o inventário fica em **Em aberto**.

## Finalize o inventário

Quando terminar a contagem, clique em **Finalizar** e confirme. Depois de finalizado, **não dá mais para editar** a contagem. Se ainda não terminou, use **Salvar e finalizar depois**.

![Janela Finalizar inventário com as opções Salvar e finalizar depois e Finalizar destacada](../imagens/04.02/08-finalizar.png){ loading=lazy }

## Confira o resultado

O inventário vai para a aba **Finalizados**, com a data de início e a data final.

![Aba Finalizados com o inventário finalizado destacado](../imagens/04.02/09-finalizados.png){ loading=lazy }

No **Balanço** do estoque, o produto passa a ter o saldo contado (no exemplo, 95). No histórico do produto, o ajuste aparece como uma movimentação da categoria **Ajustes de Estoque**. Veja [Como consultar o saldo e o histórico do estoque](saldo-do-estoque.md).

</div>

## Deu algum problema?

??? question "Finalizei e o saldo não mudou"
    O produto provavelmente **nunca teve movimentação** de estoque. Dê a entrada inicial (categoria **Quant. Inicial**) e, se precisar, faça um novo inventário.

??? question "O produto com variações (tamanho, sabor) não aparece para adicionar"
    Produtos com variações só aparecem no inventário depois da **primeira entrada** no estoque.

??? question "Errei a contagem e já finalizei"
    O inventário finalizado não pode ser editado. Faça um ajuste com **Registrar entrada** ou **Registrar saída** (categoria Ajustes de Estoque), ou um novo inventário só com esse produto.

**Relacionados:** [Como dar entrada no estoque](entrada-de-estoque.md) · [Como consultar o saldo e o histórico do estoque](saldo-do-estoque.md)

<span class="palavras-chave">inventário contagem de estoque balanço contar estoque ajuste de estoque novo saldo diferença finalizar inventário estoque físico perda sobra falta</span>
