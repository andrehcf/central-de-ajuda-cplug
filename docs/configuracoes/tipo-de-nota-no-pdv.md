---
title: Como definir o tipo de nota emitida no PDV
description: Escolha se o caixa (PDV) emite NFC-e (modelo 65) ou NF-e (modelo 55) em cada venda, e se o ICMS para consumidor final é calculado.
codigo: "10.09"
modulo: Configurações
tela: /dashboard/settings/fiscal-settings/type-invoice-pos
atualizado: 2026-11-01
---

# Como definir o tipo de nota emitida no PDV

<div class="cplug-meta" markdown>:material-clock-outline: 5 minutos · :material-format-list-numbered: 3 passos · :material-calendar-check: Atualizado em 01/11/2026</div>

Esta configuração diz ao **caixa (PDV)** qual nota fiscal emitir em cada venda. Pela **Lei 8.846**, a nota deve ser emitida **no momento da venda**, por isso o caixa precisa saber qual modelo usar.

## Entenda o conceito

As duas notas são eletrônicas e autorizadas pela Sefaz, mas foram feitas para situações diferentes:

| | **Modelo 65 - NFC-e** | **Modelo 55 - NF-e** |
| --- | --- | --- |
| **Feita para** | Venda no balcão para **consumidor final**. | Venda para **empresas**, com entrega ou para **outro estado**. |
| **Cliente na nota** | Opcional (o CPF pode ir, se o cliente pedir). | Obrigatório, com documento e endereço. |
| **Outro estado** | Não serve: só vendas **dentro do estado**. | Serve. |
| **Impresso** | Cupom com **QR Code** (usa o CSC). | DANFE. |
| **Mais comum em** | Lanchonetes, restaurantes, lojas de varejo. | Atacado, distribuidores, vendas a empresas. |

Na prática: o caixa do dia a dia emite **NFC-e**. Quando aparece uma venda que pede NF-e (empresa, outro estado), ela é emitida à parte, em **Vendas → NF-e** (veja [Como emitir uma NF-e de venda](../vendas/emitir-nfe.md)).

!!! warning "Confirme com o contador"
    O modelo depende do tipo de negócio e do estado. Antes de mudar, confirme com o contador. E lembre: para emitir, a configuração fiscal precisa estar completa. Veja [Como configurar a emissão de notas fiscais](emissao-de-notas.md).

Nos prints, o **quadrado vermelho** mostra onde você deve clicar.

<div class="passos" markdown>

## Abra a tela

No menu do lado esquerdo, clique em **Configurações → Fiscal → Tipo de NF emitida (PDV)**.

A tela mostra o aviso da Lei 8.846, o campo **Tipo de NF emitida pelo PDV** e a opção **ICMS para Consumidor Final**.

![Tela Tipo de Nota Fiscal emitida pelo PDV com o aviso da Lei 8.846, o campo Tipo de NF e a opção ICMS para Consumidor Final destacados](../imagens/10.09/01-tela.png){ loading=lazy }

## Escolha o modelo de nota

Clique em **Tipo de NF emitida pelo PDV** e escolha **Modelo 65 - NFC-e** ou **Modelo 55 - NF-e**.

![Lista com Modelo 55 - NF-e e Modelo 65 - NFC-e destacada](../imagens/10.09/02-opcoes.png){ loading=lazy }

## Confira o ICMS para Consumidor Final

A opção **ICMS para Consumidor Final** ativa a tributação de ICMS nas vendas para consumidor final, incluindo o cálculo do **Difal** em vendas para outro estado. Ligue ou desligue conforme a orientação do contador.

</div>

!!! tip "Boas práticas"
    - **Para balcão e consumidor final, use NFC-e**: é mais rápida e não exige os dados do cliente.
    - **Deixe a NF-e para os casos que pedem** (empresa, outro estado, entrega) e emita pela tela de NF-e.
    - **Configure o CSC** antes de usar NFC-e: sem ele não há QR Code (veja [Como configurar a emissão de notas fiscais](emissao-de-notas.md)).
    - **Teste uma venda em Homologação** depois de mudar o modelo.

## Deu algum problema?

??? question "O caixa não emite nota"
    Confira se o **Tipo de NF emitida pelo PDV** está escolhido (não pode ficar em "Selecione...") e se a configuração fiscal da empresa está completa (certificado, CSC, série e grupos de impostos).

??? question "Escolhi NFC-e e o cliente pediu nota com CNPJ"
    Venda para empresa que precisa de nota completa: emita uma **NF-e**. Veja [Como emitir uma NF-e de venda](../vendas/emitir-nfe.md).

**Relacionados:** [Como configurar a emissão de notas fiscais](emissao-de-notas.md) · [Como emitir uma NF-e de venda](../vendas/emitir-nfe.md)

<span class="palavras-chave">tipo de nota pdv caixa nfc-e modelo 65 nf-e modelo 55 cupom fiscal nota no caixa lei 8846 icms consumidor final difal configuração fiscal</span>
