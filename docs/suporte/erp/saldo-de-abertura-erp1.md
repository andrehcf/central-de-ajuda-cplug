---
title: Saldo de abertura do PDV (ERP 1)
description: Configurar o valor fixo que permanece no caixa no ERP 1 e entender as regras de transporte de saldo.
codigo: "ERP-005"
modulo: Suporte técnico
atualizado: 2026-11-12
---

# Saldo de abertura do PDV (ERP 1)

<div class="cplug-meta" markdown>:material-cog-outline: Configuração · :material-tag-outline: ERP 1.0 (legado) · PDV · Fechamento · :material-calendar-check: Atualizado em 12/11/2026</div>

**Objetivo:** configurar o valor fixo de abertura de caixa no ERP 1 e entender como o sistema transporta o saldo.

!!! info "No ERP 2.0"
    Em **Ponto de venda > Configurações > Geral**, a aba **Fechamento de caixa** não tem o campo "Valor que deve permanecer no caixa". Lá ficam *Exigir aprovação*, *Modelo de fechamento*, *Transferir valores automaticamente* e opções de segurança.

## Passo a passo

1. No ERP 1, clique na **engrenagem (Configurações)**.
2. Vá em **Configurações do PDV** e abra a aba **Configurações do PDV**.
3. Role até a seção **Fechamento**.
4. No campo **Valor que deve permanecer no caixa**, informe o saldo fixo. Na mesma seção ficam **Transferência automática ao fechar**, **Conta de destino** e **Exigir aprovação do fech. de caixa?**.
5. Clique em **Salvar**.

## Regras importantes

- **Relatório de fechamento:** o valor aparece fixo no campo **Valor de Abertura**.
- **Fundo de caixa variável:** se o cliente muda o fundo todo dia, deixe o campo em `0,00` e oriente o operador a fazer um **Reforço de Caixa (Suprimento)** com o valor do dia logo depois de abrir o PDV.
- **Só dinheiro conta:** o sistema usa apenas as vendas em **dinheiro** para compor o valor que fica. Se o caixa não atingir o valor em espécie (poucas vendas em dinheiro ou muitas sangrias), o PDV abre no dia seguinte com o valor real que sobrou.

## Resultado esperado

- O sistema passa a usar o valor configurado como saldo inicial nos relatórios e no fechamento.

<span class="palavras-chave">saldo de abertura fundo de caixa troco valor que deve permanecer no caixa fechamento reforço suprimento sangria erp 1</span>
