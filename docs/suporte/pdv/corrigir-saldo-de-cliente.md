---
title: Correção de lançamento incorreto em saldo de cliente
description: Adição de crédito do cliente lançada na forma de pagamento errada. Como corrigir e justificar no fechamento do caixa.
codigo: "PDV-003"
modulo: Suporte técnico
atualizado: 2026-11-12
---

# Correção de lançamento incorreto em saldo de cliente

<div class="cplug-meta" markdown>:material-help-circle-outline: Erro operacional · Dúvida · :material-cash-register: PDV · Saldo de cliente · Fluxo de caixa · :material-calendar-check: Atualizado em 12/11/2026</div>

**Cenário:** uma **Adição de crédito** (saldo do cliente) foi feita com a forma de pagamento errada (exemplo: lançada em PIX, mas o cliente pagou em dinheiro) e o operador tentou corrigir com a função **Remover**.

O sistema não tem cancelamento direto e toda **Remoção de saldo** gera uma saída automática em **Dinheiro**. Por isso o caixa fica com divergência entre as formas de pagamento no fechamento, embora o total final esteja correto.

## Passo 1: ajuste no cadastro do cliente

1. Para o cliente não sair prejudicado e o histórico ficar correto, confira se o histórico dele tem estes lançamentos:
    - a primeira **Adição de crédito**: o lançamento errado (ex.: PIX);
    - a **Remoção de crédito**: a tentativa de correção do operador (sai como Dinheiro);
    - a nova **Adição de crédito**: o lançamento certo, com a forma que o cliente usou de verdade (ex.: Dinheiro).
2. O saldo final do cliente fica correto e pronto para uso. O histórico mostra o erro e a correção, para auditoria.

## Passo 2: no caixa, não faça reforço

Não é preciso fazer **Reforço** ou **Suprimento** no caixa. A nova entrada em Dinheiro e a remoção automática em Dinheiro se anulam no sistema. O dinheiro físico do cliente já está na gaveta, então o total do caixa físico está correto.

## Como fazer o fechamento do caixa

No fim do expediente, a divergência aparece só nas modalidades:

- **Dinheiro:** **sobra** física (mais dinheiro na gaveta do que o sistema indica).
- **PIX (ou a modalidade errada):** **falta** (o sistema indica o recebimento, mas o valor não está na conta).

No campo de observação/justificativa do fechamento, o operador usa este texto padrão:

> "Divergência de valor entre as modalidades Dinheiro (Sobra) e PIX (Falta) devido a erro de lançamento manual na Adição de Saldo do cliente [Nome do Cliente]. O saldo do cliente e o valor total bruto do caixa físico encontram-se corretos."

!!! tip "Como evitar"
    - Conferir a forma de pagamento na tela de **Adição de crédito** antes de clicar em **Confirmar**.
    - Se o erro for percebido antes de qualquer outra ação, avisar o gerente na hora para anotar a justificativa, em vez de tentar remover (a remoção gera saída em dinheiro).

**Relacionados:** [Como configurar o terminal de vendas](../../ponto-de-venda/configurar-terminal.md) · [Fechamento de caixa com vários PDVs](fechamento-com-varios-pdvs.md)

<span class="palavras-chave">saldo do cliente crédito de cliente adição de crédito remover saldo forma de pagamento errada pix dinheiro sobra falta fechamento de caixa justificativa</span>
