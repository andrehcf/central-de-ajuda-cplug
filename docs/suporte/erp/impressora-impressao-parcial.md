---
title: Impressora não aparece na impressão parcial de mesas
description: A impressora cadastrada em Periféricos não aparece para a impressão parcial de mesas. Ajuste da porta do servidor (8081).
codigo: "ERP-001"
modulo: Suporte técnico
tela: /dashboard/app/peripherals
atualizado: 2026-11-12
---

# Impressora não aparece na impressão parcial de mesas

<div class="cplug-meta" markdown>:material-alert-circle-outline: Erro · :material-tag-outline: ERP 2.0 · Periféricos · Impressão · :material-calendar-check: Atualizado em 12/11/2026</div>

**Sintoma:** ao incluir uma impressora para a impressão parcial do atendimento de mesas, a impressora já configurada em **Periféricos** não aparece na lista.

**Causa:** a **Porta** nas **Informações do Servidor** do cadastro da impressora está errada ou em branco, e o ERP não localiza o periférico para essa função.

## Passo a passo

1. No menu, acesse **Configurações > Periféricos**.
2. Localize a impressora usada na impressão parcial.
3. Clique nos **três pontos** ao lado do nome da impressora.
4. Selecione **Editar**.
5. Role até a seção **Informações do Servidor**.
6. No campo **Porta**, informe `8081` (é o valor que já vem num cadastro novo).
7. Salve e confira a lista na tela de atendimento de mesas.

## Resultado esperado

- A impressora passa a aparecer na lista da impressão parcial de mesas.

**Relacionados:** [Impressora USB no ERP 2](../perifericos/impressora-usb-erp2.md) · [Impressora de rede direta no ERP 2](../perifericos/impressora-rede-erp2.md)

<span class="palavras-chave">impressão parcial mesas impressora não aparece periféricos informações do servidor porta 8081 conta parcial</span>
