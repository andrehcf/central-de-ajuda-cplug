---
title: Impressora de rede (Ethernet) no ERP 1
description: Ponto de impressão no ERP 1 para impressora térmica ligada direto no cabo de rede, sem compartilhamento do Windows.
codigo: "PER-003"
modulo: Suporte técnico
atualizado: 2026-11-12
---

# Impressora de rede (Ethernet) no ERP 1

<div class="cplug-meta" markdown>:material-cog-outline: Configuração · :material-tag-outline: ERP 1.0 (legado) · Periféricos · Rede · :material-calendar-check: Atualizado em 12/11/2026</div>

**Objetivo:** configurar o ponto de impressão no ERP 1 para impressoras térmicas que se comunicam direto pelo cabo de rede, sem compartilhamento do Windows.

!!! info "Antes de começar"
    - A impressora está ligada pelo cabo de rede no mesmo roteador/switch do computador do PDV.
    - Impressora e PDV na **mesma sub-rede** (ex.: PC em `192.168.15.50`, impressora em `192.168.15.200`).

!!! tip "Um Servidor CPrint basta"
    Com várias impressoras de rede, não crie um Servidor CPrint para cada uma. O mesmo servidor **Local** (`127.0.0.1`) serve para todas. Se o cliente já tem o CPrint criado, não crie outro.

## Parte 1: Servidor CPrint local

1. No ERP 1, clique na **engrenagem > Configurações do PDV > Servidores CPrint**.
2. Clique em **Novo Servidor CPrint** ou, se o servidor **Local** já existir, no ícone de editar dele.
3. Confira o **Endereço IP** `127.0.0.1` e a porta `8081`.
4. Deixe a versão **2.0** e clique em **Salvar**.

## Parte 2: ponto de impressão

1. Na mesma tela, abra a aba **Pontos de Impressão**.
2. Clique em **Novo Ponto de Impressão** (ou no ícone de editar da impressora).
3. Em **Nome/Descrição**, dê um nome ao ponto (ex.: Cozinha).
4. Em **Porta ou IP da Impressora**, informe só o IP fixo da impressora (ex.: `192.168.15.200`), **sem** as barras invertidas usadas no modelo USB.
5. Em **Porta da Impressora de Rede**, informe `9100`.
6. Em **Tipo de Comunicação**, selecione **Acesso Direto**.
7. Em **Servidor CPrint**, selecione **Local**.
8. Preencha **Fabricante** e **Modelo** e clique em **Salvar**.

## Resultado esperado

- O CPrint local recebe a requisição do ERP 1 e envia os dados por TCP/IP direto para o IP da impressora na porta 9100, sem passar pela fila do Windows.

**Relacionados:** [Impressora de rede direta no ERP 2](impressora-rede-erp2.md) · [Impressora de rede com spooler no ERP 1](impressora-spooler-erp1.md)

<span class="palavras-chave">impressora de rede ethernet cabo de rede ip fixo erp 1 legado cprint local 9100 acesso direto mesma sub-rede</span>
