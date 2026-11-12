---
title: Gerenciamento e restrição de impressões no PDV
description: Definir quais comprovantes e relatórios o PDV imprime automaticamente, pelo painel do ERP.
codigo: "ERP-007"
modulo: Suporte técnico
atualizado: 2026-11-12
---

# Gerenciamento e restrição de impressões no PDV

<div class="cplug-meta" markdown>:material-cog-outline: Configuração · :material-tag-outline: ERP 1.0 e ERP 2.0 · PDV · Impressão · :material-calendar-check: Atualizado em 12/11/2026</div>

**Objetivo:** definir pelo ERP quais comprovantes e relatórios o PDV imprime.

!!! info "Antes de começar"
    Acesso ao ERP com permissão de administrador.

## No ERP 2.0

1. Acesse **Ponto de venda > Configurações > Recibos e notas impressas**.
2. No bloco **Impressão automática**, ligue **Imprimir automaticamente** e marque o que deve sair sozinho:
    - **Relatório de fechamento de caixa** (desmarque se o cliente quer poupar papel no fechamento);
    - **DANFE ao transmitir a nota fiscal**;
    - **Relatório gerencial ao finalizar uma venda**.
3. Em **Tipo de impressão de pedido**, escolha **Todos os produtos** ou **Apenas produtos com impressora**.
4. Na mesma tela ficam também **Customização**, **QR Code de engajamento**, **Fichas de consumo** e a [impressão fracionada](impressao-de-atributos.md).
5. Salve.

## No ERP 1.0 (legado)

1. Clique na **engrenagem > Configurações do PDV > Configurações do PDV** e localize o bloco de impressão.
2. Marque ou desmarque conforme a operação:
    - Impressão de Relatório Gerencial;
    - Impressão da NFC-e;
    - Impressão de Relatório de fechamento de caixa;
    - Impressão de Cupom de Pedido;
    - Impressão de Cupom de Crédito de Cliente / Crediário;
    - Configurar impressão dos atributos;
    - demais cupons da tela.
3. Salve.

## Sincronize o PDV

No frente de caixa, faça a **sincronização** para aplicar as novas regras na hora.

## Resultado esperado

- O PDV passa a imprimir automaticamente só o que ficou ativo no ERP.

**Relacionados:** [Impressão de atributos fracionada ou agrupada](impressao-de-atributos.md) · [Como configurar o terminal de vendas](../../ponto-de-venda/configurar-terminal.md)

<span class="palavras-chave">impressão automática não imprimir relatório de fechamento danfe relatório gerencial cupom de pedido poupar papel recibos e notas impressas</span>
