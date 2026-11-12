---
title: Fechamento de caixa com vários PDVs (mesas, comandas e delivery)
description: Como mesas, comandas, delivery e balcão se comportam entre vários PDVs e como centralizar o fechamento em um caixa.
codigo: "PDV-005"
modulo: Suporte técnico
atualizado: 2026-11-12
---

# Fechamento de caixa com vários PDVs (mesas, comandas e delivery)

<div class="cplug-meta" markdown>:material-help-circle-outline: Dúvida · :material-cash-register: PDV · Fluxo de caixa · Operação · :material-tag-outline: PDV desktop · versão do ERP não confirmada · :material-calendar-check: Atualizado em 12/11/2026</div>

**Dúvida:** como funciona o fechamento de caixa com mais de um terminal e como mesas, comandas e delivery se comportam entre as telas.

O sistema não tem uma configuração para juntar dois caixas automaticamente: cada terminal que finaliza uma venda é tratado de forma independente. Mas dá para centralizar a operação assim:

## Como funciona

1. **Módulos compartilhados (mesas, comandas e delivery):** abertura de mesa, lançamento em comanda e recebimento de delivery (por integração ou lançamento manual) ficam na mesma base. Uma mesa aberta ou um delivery recebido aparece em todos os PDVs ativos da loja.
2. **Centralizar o fechamento:** para fechar em um único computador, padronize que **todas as finalizações de pagamento** (mesas, comandas e entregas) sejam feitas em um PDV eleito como **principal**. A venda entra no caixa do computador que finalizou/emitiu o cupom.
3. **Balcão não é compartilhado:** toda venda iniciada e encerrada no **Balcão** do PDV 1 fica no caixa do PDV 1; o mesmo vale para o PDV 2. Se os dois usarem o Balcão, haverá obrigatoriamente dois fechamentos de caixa.

## Resultado esperado

- Produtos lançados em mesas e comandas e novos pedidos de delivery feitos no PDV 2 aparecem na hora no PDV 1.
- Se o PDV 1 receber e encerrar essas mesas e entregas, o valor entra só no relatório do PDV 1, e o fechamento fica centralizado.
- O relatório mostra separadas as vendas de Balcão de cada terminal, se houver.

**Relacionados:** [Correção de lançamento incorreto em saldo de cliente](corrigir-saldo-de-cliente.md) · [PDV offline em rede local](../infraestrutura/pdv-offline-rede-local.md)

<span class="palavras-chave">dois caixas vários pdvs fechamento de caixa unificar centralizar mesas comandas delivery balcão pdv principal</span>
