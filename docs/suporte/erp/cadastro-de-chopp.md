---
title: Cadastro de chopp (estoque e ficha técnica)
description: Cadastrar o barril como insumo e o copo/caneca como produção automática, com baixa em litros e custo real.
codigo: "ERP-009"
modulo: Suporte técnico
tela: /dashboard/catalog/products/new
atualizado: 2026-11-12
---

# Cadastro de chopp (estoque e ficha técnica)

<div class="cplug-meta" markdown>:material-cog-outline: Configuração · :material-tag-outline: ERP 2.0 · Estoque · Produtos · Ficha técnica · :material-calendar-check: Atualizado em 12/11/2026</div>

**Objetivo:** cadastrar o chopp vendido em copos/canecas para que o sistema dê baixa automática dos litros do barril (insumo) e calcule o custo real.

Sem essa relação entre o volume comprado (barril) e a fração vendida (caneca), não há baixa automática do insumo e os relatórios de custo ficam zerados. São duas partes obrigatórias.

## Parte 1: barril de chopp (insumo)

Este cadastro serve só para estoque e entrada de notas de compra. Não aparece no cardápio do PDV.

1. No menu, acesse **Produtos** e clique em **Novo produto**.
2. Preencha:
    - **Nome:** identificação clara (ex.: Barril de Chopp 30L).
    - **Tipo:** **Insumo**.
    - **Unidade de medida:** **L (Litros)**.
3. Salve.
4. Na entrada de estoque (importação de XML ou compra manual), lance:
    - **Quantidade:** total em litros (barril de 30 litros = `30,00`).
    - **Custo unitário (por litro):** valor do barril ÷ litros (R$ 400,00 ÷ 30 = `13,33`).
    - O custo total é calculado sozinho (cerca de R$ 399,90).

## Parte 2: chopp para venda (produção automática)

Este é o produto que o atendente seleciona no PDV ou nos aplicativos.

1. Em **Produtos > Novo produto**, preencha:
    - **Nome:** nome comercial (ex.: Chopp - Caneca 500ml).
    - **Unidade de medida:** **UN (Unidade)** ou **CP (Copo)**.

    !!! warning "Unidade de venda"
        Nunca use mL ou L como unidade de venda aqui: causa divergências e quebras visuais nos relatórios de vendas.

2. Em **Tipo**, escolha **Produção automática**. Isso libera a seção de componentes.
3. Clique em **Adicionar componentes**, pesquise o barril criado na Parte 1 e selecione.
4. Na linha do componente, em **Quantidade**, informe os litros de uma unidade de venda: caneca de 500 ml = `0,50`.

    !!! tip "Perda de colarinho/espuma"
        O ERP 2.0 não tem campo de desperdício. Para considerar a perda, some na quantidade (ex.: `0,52` para 20 ml de perda por caneca).

5. Para o custo, use **Recalcular custo** nos **três pontos** da linha do componente. O **Custo total** do produto é preenchido (no exemplo, R$ 6,67).
6. Para o preço, informe a **Porcentagem** de lucro (ex.: `200,00`). O sistema mostra o **Preço sugerido** (ex.: R$ 20,01). Clique em **Aplicar preço** e em **Confirmar**.
7. Confira e salve.

## Resultado esperado

- O "Chopp - Caneca 500ml" fica disponível para venda no PDV e nos aplicativos.
- A cada caneca vendida, o sistema baixa 0,50 L (ou a quantidade com perda) do saldo do barril no estoque.

## Lucro nos relatórios

O sistema calcula o lucro com base no custo informado **na entrada do item no estoque**. Como o custo e a nota entram só no barril, o relatório de vendas mostra o custo do chopp zerado (R$ 0,00) e o lucro parece ser de 100%.

**Contorno manual:** no cadastro do chopp (ex.: Chopp 500 ml), aba **Estoque**, ative **Custo com valor fixo** e informe em **Valor do custo** o custo da fração (ex.: `6,67`).

!!! warning "Processo manual"
    O valor fixo não se atualiza sozinho. A cada compra de barril com preço diferente, o custo precisa ser recalculado e alterado no cadastro do chopp.

**Relacionados:** [Como montar a ficha técnica](../../produtos/ficha-tecnica.md) · [Como cadastrar um produto](../../produtos/cadastrar-produto.md) · [Como dar entrada no estoque](../../estoque/entrada-de-estoque.md)

<span class="palavras-chave">chopp barril caneca copo litros ml insumo produção automática ficha técnica componentes baixa de estoque custo fixo lucro zerado bebida fracionada</span>
