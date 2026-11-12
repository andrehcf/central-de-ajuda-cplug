---
title: Impressora de rede com spooler/driver do Windows no ERP Legado
description: Impressora de rede com driver instalado no Windows, configurada no ERP Legado pelo compartilhamento local e CPrint.
codigo: "PER-004"
modulo: Suporte técnico
atualizado: 2026-11-12
---

# Impressora de rede com spooler/driver do Windows no ERP Legado

<div class="cplug-meta" markdown>:material-cog-outline: Configuração · :material-tag-outline: ERP Legado · Periféricos · Rede com driver · :material-calendar-check: Atualizado em 12/11/2026</div>

**Objetivo:** configurar no ERP Legado impressoras de rede cujo driver/spooler está instalado no Windows (apontando para uma porta IP), usando o compartilhamento local para falar com o CPrint.

!!! info "Antes de começar"
    - Driver da impressora instalado no Windows, com a porta configurada para o IP da impressora (ex.: `192.168.15.200`).
    - A página de teste do Windows sai normalmente pelo Painel de Controle (`control printers`).

## Parte 1: compartilhamento no Windows

1. Pressione **Windows + R**, digite `control printers` e pressione **Enter**.
2. Clique com o botão direito na impressora de rede e selecione **Propriedades da Impressora**.
3. Na aba **Compartilhamento**, marque **Compartilhar esta impressora**.
4. Copie exatamente o **Nome de compartilhamento** (ex.: `cozinha`).

## Parte 2: Servidor CPrint no ERP Legado

1. No ERP Legado, acesse **engrenagem > Configurações do PDV > Servidores CPrint**.
2. Clique em **Novo Servidor CPrint** (ou no ícone de editar do servidor) e defina o **Endereço IP** conforme o cenário:
    - **Cenário A (só o PDV local imprime):** use `127.0.0.1`.
    - **Cenário B (aplicativo de mesas/comandas):** o aplicativo manda a ordem para a nuvem, que precisa achar o computador com o spooler. Use o IP fixo de rede desse computador (ex.: `10.0.0.108`).
3. Mantenha a porta `8081`, marque a versão **2.0** e salve.

## Parte 3: ponto de impressão

1. Abra a aba **Pontos de Impressão** e clique em **Novo Ponto de Impressão** (ou no ícone de editar da impressora).
2. Em **Nome/Descrição**, dê um nome ao ponto (ex.: Cozinha) e, em **Impressora**, informe o nome da impressora no computador.
3. Em **Porta ou IP da Impressora**, use o caminho de compartilhamento: `\\127.0.0.1\<nome_do_compartilhamento>` (ex.: `\\127.0.0.1\cozinha`).
4. Em **Porta da Impressora de Rede**, informe `9100`.
5. Em **Tipo de Comunicação**, selecione **Acesso Direto** (obrigatório).
6. Em **Servidor CPrint**, escolha o servidor da Parte 2 (Local ou o IP do computador do spooler, conforme o cenário).
7. Selecione **Fabricante** e **Modelo** e clique em **Salvar**.

## Resultado esperado

- Ao imprimir (pelo PDV ou pelo aplicativo de mesas), o ERP Legado aciona o CPrint pelo IP configurado. O CPrint joga o documento na fila do Windows, e o Windows envia pela rede para a impressora.

**Relacionados:** [Impressora de rede com spooler no ERP 2.0](impressora-spooler-erp2.md) · [Impressora de rede (Ethernet) no ERP Legado](impressora-rede-erp1.md)

<span class="palavras-chave">impressora de rede driver spooler windows erp 1 legado compartilhamento cprint aplicativo de mesas comandas 127.0.0.1 9100 8081 erp legado</span>
