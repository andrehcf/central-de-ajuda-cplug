---
title: Inutilização e transmissão de notas
description: Números de nota pulados e notas com erro de meses anteriores. Quando inutilizar e quando transmitir.
codigo: "FISCAL-006"
modulo: Suporte técnico
tela: /dashboard/sale/outbound-invoices
atualizado: 2026-11-12
---

# Inutilização e transmissão de notas

<div class="cplug-meta" markdown>:material-help-circle-outline: Dúvida · :material-tag-outline: ERP 2.0 · Faturamento · Fiscal · :material-calendar-check: Atualizado em 12/11/2026</div>

Números de nota pulados ou diferença entre o relatório de vendas e o da contabilidade costumam aparecer em dois cenários.

## Cenário 1: o sistema pulou um número (sem venda)

Por instabilidade na internet ou na comunicação com a Sefaz, o sistema pode pular um número da sequência (ex.: emitir a nota 100 e depois a 102). Como não existe venda real no número 101, o suporte associa uma venda antiga do histórico a esse número só para fazer o processo técnico de inutilização.

- **O que é inutilizar:** avisar formalmente à Sefaz que aquele número foi pulado por falha técnica e **nunca existiu**, para não deixar "buraco" na sequência fiscal.

## Cenário 2: a venda foi feita, mas a nota deu erro

Costuma aparecer quando o contador avisa que **o total das vendas não bate com o total das notas autorizadas**. A venda foi faturada, mas a nota ficou presa num erro e não foi transmitida.

## Nota antiga com erro: transmitir ou inutilizar?

A decisão é do **contador**:

- **Transmitir agora:** a nota é autorizada, mas entra na **competência atual** (mês vigente), o que pode afetar os impostos do mês.
- **Inutilizar:** o número é descartado na Sefaz, e o contador orienta como regularizar a venda passada na escrituração.

!!! tip "Evite surpresas no fim do mês"
    Uma vez por semana (e sempre alguns dias antes do fechamento do mês), confira em **Vendas > NF-e** as notas com status **Pendente** ou **Falhou**. Corrigir dentro do mês da venda evita divergência com o contador.

**Relacionados:** [Como cancelar, inutilizar ou corrigir uma nota](../../vendas/cancelar-nota.md) · [Como resolver uma nota rejeitada](../../vendas/nota-rejeitada.md) · [Emissão manual de NFC-e pelo histórico](emitir-nfce-pelo-historico.md)

<span class="palavras-chave">inutilizar inutilização número pulado sequência de notas buraco nota com erro pendente falhou competência contador transmitir nota antiga</span>
