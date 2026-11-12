---
title: Impressora de rede direta (Ethernet) no ERP 2.0
description: Cadastrar em Periféricos no ERP 2.0 a impressora térmica ligada direto no cabo de rede, sem driver do Windows.
codigo: "PER-007"
modulo: Suporte técnico
tela: /dashboard/app/peripherals
atualizado: 2026-11-12
---

# Impressora de rede direta (Ethernet) no ERP 2.0

<div class="cplug-meta" markdown>:material-cog-outline: Configuração · :material-tag-outline: ERP 2.0 · Periféricos · Rede · :material-calendar-check: Atualizado em 12/11/2026</div>

**Objetivo:** configurar no ERP 2.0 impressoras térmicas que se comunicam direto pelo cabo de rede, sem driver nem compartilhamento do Windows.

!!! info "Antes de começar"
    - A impressora está ligada pelo cabo de rede no mesmo roteador/switch do computador do PDV.
    - Impressora e PDV na **mesma sub-rede** (ex.: PC em `192.168.15.50`, impressora em `192.168.15.200`).

## Passo a passo

1. No menu lateral, acesse **Configurações > Periféricos** e clique em **Novo periférico**.
2. Escolha o tipo **Impressora** e clique em **Avançar**. Abre a tela **Novo ponto de impressão**.
3. Preencha:
    - **Nome:** conforme o uso (ex.: Cozinha, Bar, Parcial).
    - **Descrição:** opcional.
    - **Fabricante** e **Modelo:** os do equipamento.
    - **Tipo de comunicação:** **Acesso direto**.
4. No campo do endereço do periférico, informe o **IP fixo da impressora** (ex.: `192.168.15.200`).
5. Em **Porta do periférico na rede**, confira `9100` (já vem preenchido).
6. Em **Informações do Servidor**, mantenha **IP** `127.0.0.1` e **Porta** `8081` (já vêm preenchidos). Como a impressora fala direto pela rede, o servidor é o local.
7. Salve, no rodapé da página.

## Resultado esperado

- Ao imprimir, o ERP 2.0 aciona o serviço local em `127.0.0.1:8081`, que envia os dados por TCP na porta 9100 direto para o IP da impressora, sem driver no Windows.

**Relacionados:** [Impressora de rede (Ethernet) no ERP Legado](impressora-rede-erp1.md) · [Impressora de rede com spooler no ERP 2.0](impressora-spooler-erp2.md) · [Configuração de IP fixo no Windows](../infraestrutura/ip-fixo-no-windows.md)

<span class="palavras-chave">impressora de rede ethernet cabo de rede ip fixo erp 2 periféricos novo ponto de impressão 9100 8081 127.0.0.1 acesso direto sem driver</span>
