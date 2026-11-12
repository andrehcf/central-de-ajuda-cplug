---
title: Configuração de IP fixo no Windows (servidor e PDVs)
description: Fixar o IP do servidor e dos PDVs no Windows para o roteador não mudar o endereço e quebrar a conexão dos caixas.
codigo: "INFRA-002"
modulo: Suporte técnico
atualizado: 2026-11-12
---

# Configuração de IP fixo no Windows (servidor e PDVs)

<div class="cplug-meta" markdown>:material-cog-outline: Infraestrutura · :material-lan: Rede · PDV · Servidor · :material-calendar-check: Atualizado em 12/11/2026</div>

**Necessidade:** fixar o IP da máquina (servidor ou PDV) para a comunicação na rede local não cair quando o roteador reinicia.

**Por que:** o roteador distribui IPs dinâmicos (DHCP). O IP do servidor pode mudar com o tempo e quebrar a conexão dos PDVs secundários. Com **IP fixo**, o endereço não muda.

## Etapa 1: descobrir o IP atual e o gateway

1. Pressione **Windows + R**.
2. Digite `cmd` e pressione **Enter**.
3. No Prompt de Comando, digite `ipconfig` e pressione **Enter**.
4. Anote:
    - **Endereço IPv4** (ex.: `192.168.1.50`)
    - **Máscara de Sub-rede** (ex.: `255.255.255.0`)
    - **Gateway Padrão** (ex.: `192.168.1.1`)

## Etapa 2: aplicar o IP fixo

1. Pressione **Windows + R**, digite `ncpa.cpl` e pressione **Enter**. Abre **Conexões de Rede**.
2. Clique com o botão direito na conexão (normalmente **Ethernet** ou **Wi-Fi**) e selecione **Propriedades**.
3. Dê dois cliques em **Protocolo IP Versão 4 (TCP/IPv4)**.
4. Marque **Usar o seguinte endereço IP**.
5. Preencha com os dados da Etapa 1:
    - **Endereço IP:** o IP desejado (ex.: `192.168.1.100` no servidor);
    - **Máscara de sub-rede:** preenche sozinha ao clicar (normalmente `255.255.255.0`);
    - **Gateway padrão:** o IP do roteador (ex.: `192.168.1.1`).
6. Em **DNS**, use os DNS do Google:
    - **Servidor DNS preferencial:** `8.8.8.8`
    - **Servidor DNS alternativo:** `8.8.4.4`
7. Marque **Validar configurações na saída** e clique em **OK** nas duas janelas.

## Resultado esperado

- O computador mantém o mesmo IP local, mesmo com o modem desligado ou reiniciado.
- Os PDVs secundários apontam sempre para o IP fixo do servidor, sem perder a conexão.
- A internet continua funcionando se gateway e DNS estiverem corretos.

**Relacionados:** [PDV offline em rede local](pdv-offline-rede-local.md) · [Desativação do firewall do Windows](desativar-firewall.md)

<span class="palavras-chave">ip fixo ip estático windows ipconfig ncpa.cpl tcp/ipv4 gateway máscara dns 8.8.8.8 dhcp servidor pdv rede local</span>
