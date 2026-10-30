---
title: Como cancelar ou inutilizar uma nota fiscal
description: Cancele uma nota autorizada dentro do prazo ou inutilize o número de uma nota que não foi autorizada, informando o motivo exigido pela Sefaz.
codigo: "05.08"
modulo: Vendas
tela: /dashboard/sale/outbound-invoices
atualizado: 2026-10-30
---

# Como cancelar ou inutilizar uma nota fiscal

<div class="cplug-meta" markdown>:material-clock-outline: 3 minutos · :material-format-list-numbered: 6 passos · :material-calendar-check: Atualizado em 30/10/2026</div>

São duas situações diferentes:

| | **Cancelar** | **Inutilizar** |
| --- | --- | --- |
| **Quando usar** | A nota **foi autorizada** (status **Transmitido**), mas a venda não aconteceu ou a nota saiu errada. | A nota **não foi autorizada** (status **Falhou** ou **Pendente**) e você não vai mais usar esse número. |
| **O que acontece** | A nota perde a validade na Sefaz. | O **número** é marcado na Sefaz como "pulado de propósito". |
| **Prazo** | Curto. Para NF-e, em geral até **24 horas** depois da autorização. Para NFC-e, o prazo costuma ser **menor**. Passou do prazo, fale com o contador. | Faça assim que perceber o número pulado. |

!!! danger "As duas ações não podem ser desfeitas"
    Depois de cancelada ou inutilizada, a nota **não volta**. Confira se é a nota certa antes de confirmar.

Nos prints, o **quadrado vermelho** mostra onde você deve clicar ou digitar.

<div class="passos" markdown>

## Cancelar: abra a opção na nota autorizada

Em **Vendas → NF-e**, encontre a nota com o status **Transmitido**. Nos **três pontinhos**, clique em **Cancelar NF-e**.

![Nota Transmitido com a opção Cancelar NF-e destacada](../imagens/05.08/01-cancelar-menu.png){ loading=lazy }

## Cancelar: informe o motivo e confirme

Em **Motivo do cancelamento**, escreva por que a nota está sendo cancelada, com **15 a 255 caracteres** (exigência da Sefaz). Exemplo: "Venda desfeita a pedido do cliente".

Clique em **Cancelar** (o botão vermelho).

![Janela Cancelar esta nota fiscal com o motivo e o botão Cancelar destacados](../imagens/05.08/02-cancelar-motivo.png){ loading=lazy }

## Cancelar: confira o status

A nota passa para o status **Cancelado**.

![Nota com o status Cancelado destacado](../imagens/05.08/03-cancelada.png){ loading=lazy }

## Inutilizar: abra a opção na nota não autorizada

Encontre a nota com o status **Falhou** (ou **Pendente**) que não vai ser usada. Nos **três pontinhos**, clique em **Inutilizar NF-e**.

![Nota Falhou com a opção Inutilizar NF-e destacada](../imagens/05.08/04-inutilizar-menu.png){ loading=lazy }

## Inutilizar: informe o motivo e confirme

Em **Motivo da inutilização**, escreva o motivo com **15 a 255 caracteres**. Exemplo: "Número rejeitado pela Sefaz e não reaproveitado".

Clique em **Inutilizar nota**.

![Janela Inutilizar esta nota fiscal com o motivo e o botão Inutilizar nota destacados](../imagens/05.08/05-inutilizar-motivo.png){ loading=lazy }

## Inutilizar: confira o status

A nota passa para o status **Inutilizado**.

![Nota com o status Inutilizado destacado](../imagens/05.08/06-inutilizada.png){ loading=lazy }

</div>

!!! tip "Erro pequeno de texto? Use a carta de correção"
    Se a nota foi autorizada com um erro **só de texto** (por exemplo, um endereço com letra trocada), não precisa cancelar: use **Carta de correção** nos três pontinhos. A carta **não** corrige valores, impostos, quantidades, nem quem vendeu e quem comprou.

## Deu algum problema?

??? question "A opção Cancelar NF-e está apagada"
    Só dá para cancelar nota **autorizada** (Transmitido). Para notas com **Falhou** ou **Pendente**, use **Inutilizar NF-e**.

??? question "A Sefaz recusou o cancelamento por prazo"
    O prazo para cancelar já passou. Fale com o **contador**: em alguns estados é possível um cancelamento fora do prazo, por outro caminho.

??? question "O motivo não foi aceito"
    O texto precisa ter **no mínimo 15 caracteres**. Escreva uma frase completa.

**Relacionados:** [Como emitir uma NF-e de venda](emitir-nfe.md) · [Como resolver uma nota fiscal rejeitada](nota-rejeitada.md)

<span class="palavras-chave">cancelar nota cancelar nf-e cancelamento inutilizar inutilização número pulado nota não autorizada prazo de cancelamento 24 horas motivo do cancelamento carta de correção cc-e sefaz cancelado inutilizado</span>
