---
title: Emissão manual de NFC-e pelo histórico de vendas
description: Emitir pelo ERP a NFC-e de uma venda que ficou sem nota no fechamento (rede instável ou rejeição da Sefaz).
codigo: "FISCAL-001"
modulo: Suporte técnico
tela: /dashboard/sale/sales
atualizado: 2026-11-12
---

# Emissão manual de NFC-e pelo histórico de vendas

<div class="cplug-meta" markdown>:material-help-circle-outline: Processo operacional · :material-tag-outline: ERP 2.0 · Faturamento · Fiscal · :material-calendar-check: Atualizado em 12/11/2026</div>

**Objetivo:** emitir a NFC-e de uma venda que não gerou o documento fiscal no fechamento, por instabilidade de rede ou rejeição da Sefaz.

!!! info "Limite do histórico no PDV"
    O PDV Desktop mostra no histórico no máximo as **200 últimas vendas**. No ERP 2.0 esse número é configurável em **Ponto de venda > Configurações > Geral**, no campo **Limitar exibição de vendas no histórico do PDV** (até 200). Se a venda não aparece mais no caixa, emita pelo ERP, como abaixo.

## Passo a passo

1. No ERP, acesse **Vendas > Vendas**.
2. Localize a venda pela data, valor ou número do cupom.
3. Confirme que a venda tem um traço (**-**) na coluna **Nº Nota Fiscal**: sinal de que não tem nota.
4. Clique nos **três pontos** da linha e escolha **Gerar nota fiscal > Gerar NFC-e**.
5. Na janela **Dados complementares**, abaixo dos campos de CFOP, marque **Nota para Consumidor Final?** e clique em **Salvar**.
6. Na tela com o espelho da nota, role até o rodapé e clique em **Salvar** de novo para gravar a nota.
7. Na lista de notas, localize a nota e **transmita** para a Sefaz.
8. Com o status **Autorizada**, gere o DANFE pelas ações da linha e imprima ou salve.

## Resultado esperado

- O traço (-) some da lista de vendas e dá lugar ao número da nota autorizada, regularizando a venda.

**Relacionados:** [Como resolver uma nota rejeitada](../../vendas/nota-rejeitada.md) · [Inutilização e transmissão de notas](inutilizacao-e-transmissao.md)

<span class="palavras-chave">nfc-e não emitida venda sem nota emitir nota depois histórico de vendas gerar nota fiscal gerar nfc-e traço 200 vendas contingência rejeição</span>
