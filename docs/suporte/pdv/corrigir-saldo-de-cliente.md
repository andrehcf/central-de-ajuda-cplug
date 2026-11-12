---
title: Correção de lançamento incorreto em saldo de cliente
description: Adição de crédito do cliente lançada na forma de pagamento errada. Como corrigir e justificar no fechamento do caixa.
codigo: "PDV-003"
modulo: Suporte técnico
atualizado: 2026-11-12
---

# Correção de lançamento incorreto em saldo de cliente

<div class="cplug-meta" markdown>:material-help-circle-outline: Erro operacional · Dúvida · :material-cash-register: PDV · Saldo de cliente · Fluxo de caixa · :material-tag-outline: PDV desktop · :material-calendar-check: Atualizado em 12/11/2026</div>

**Cenário:** uma adição de crédito (saldo do cliente) foi feita com a forma de pagamento errada (exemplo: lançada em PIX, mas o cliente pagou em dinheiro) e o operador tentou corrigir com a função **REMOVER**.

No PDV, o crédito fica em **CRÉDITO DOS CLIENTES (C)**, na tela inicial: escolha o cliente e use as abas **ADICIONAR (F3)** e **REMOVER (F4)**, com o campo **Método de Pagamento** e o botão **CONFIRMAR**. O lado direito mostra o **Histórico** do cliente.

O sistema não tem cancelamento direto e toda remoção de crédito gera uma saída em **Dinheiro**: na aba **REMOVER**, o **Método de Pagamento** fica travado em Dinheiro. Por isso o caixa fica com divergência entre as formas de pagamento no fechamento, embora o total final esteja correto.

## Passo 1: ajuste no cadastro do cliente

1. Para o cliente não sair prejudicado e o histórico ficar correto, confira se o **Histórico** dele tem estes lançamentos:
    - a primeira adição de crédito: o lançamento errado (ex.: PIX);
    - a remoção de crédito: a tentativa de correção do operador (sai como Dinheiro);
    - a nova adição de crédito (aba **ADICIONAR**): o lançamento certo, com a forma que o cliente usou de verdade (ex.: Dinheiro).
2. O saldo final do cliente fica correto e pronto para uso. O histórico mostra o erro e a correção, para auditoria.

## Passo 2: no caixa, não faça reforço

Não é preciso fazer **Reforço** ou **Suprimento** no caixa. A nova entrada em Dinheiro e a remoção automática em Dinheiro se anulam no sistema. O dinheiro físico do cliente já está na gaveta, então o total do caixa físico está correto.

## Como fazer o fechamento do caixa

No fim do expediente, a divergência aparece só nas modalidades:

- **Dinheiro:** **sobra** física (mais dinheiro na gaveta do que o sistema indica).
- **PIX (ou a modalidade errada):** **falta** (o sistema indica o recebimento, mas o valor não está na conta).

No campo de observação/justificativa do fechamento, o operador usa este texto padrão:

> "Divergência de valor entre as modalidades Dinheiro (Sobra) e PIX (Falta) devido a erro de lançamento manual na adição de crédito do cliente [Nome do Cliente]. O saldo do cliente e o valor total bruto do caixa físico encontram-se corretos."

!!! tip "Como evitar"
    - Conferir o campo **Método de Pagamento** da aba **ADICIONAR** antes de clicar em **CONFIRMAR**.
    - Se o erro for percebido antes de qualquer outra ação, avisar o gerente na hora para anotar a justificativa, em vez de tentar remover (a remoção gera saída em dinheiro).

**Relacionados:** [Como configurar o terminal de vendas](../../ponto-de-venda/configurar-terminal.md) · [Fechamento de caixa com vários PDVs](fechamento-com-varios-pdvs.md)

<span class="palavras-chave">saldo do cliente crédito de cliente crédito dos clientes adição de crédito adicionar remover saldo forma de pagamento errada pix dinheiro sobra falta fechamento de caixa justificativa</span>
