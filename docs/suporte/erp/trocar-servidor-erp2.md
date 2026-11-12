---
title: Migração e troca de servidor local (ERP 2.0 / CPlug Server)
description: Trocar o computador servidor da loja no ERP 2.0, com MongoDB, revogação de licença e nova vinculação por PIN.
codigo: "ERP-002"
modulo: Suporte técnico
tela: /dashboard/apps
atualizado: 2026-11-12
---

# Migração e troca de servidor local (ERP 2.0 / CPlug Server)

<div class="cplug-meta" markdown>:material-alert-circle-outline: Erro · Infraestrutura · :material-tag-outline: ERP 2.0 · Banco de dados · :material-calendar-check: Atualizado em 12/11/2026</div>

**Quando usar:** o computador servidor da loja precisa ser substituído por falha de hardware, lentidão extrema ou banco MongoDB corrompido, exigindo migração completa.

!!! danger "Alerta crítico"
    Confirme com a loja se há **mesas, comandas ou entregas (delivery) abertas**. Se houver, esses dados locais serão **perdidos permanentemente**. Só comece depois de finalizar todas as movimentações.

## Parte 1: desinstalar o servidor atual (máquina antiga)

1. Na máquina servidora antiga, pressione **Ctrl + Shift + Esc** para abrir o Gerenciador de Tarefas.
2. Na aba **Detalhes**, localize o processo `CPServer.exe`, clique com o botão direito e selecione **Finalizar árvore de processos**.
3. Vá em **Painel de Controle > Desinstalar um programa**, localize o **MongoDB** e desinstale.
4. No Explorador de Arquivos, abra o disco `C:` e renomeie a pasta `data` para `data.old`.

## Parte 2: limpar o cache do PDV Desktop

1. Pressione **Windows + R**, digite `%appdata%` e pressione **Enter**.
2. Localize a pasta do PDV (**ConnectPlug PDV**) e renomeie adicionando `.old` ao final (de `ConnectPlug PDV` para `ConnectPlug PDV.old`).

## Parte 3: reset dos dispositivos no ERP

1. No navegador, acesse o ERP do cliente e vá em **Dispositivos > Terminais & Dispositivos**.
2. Abra o dispositivo **Servidor**. Na página **Computador servidor**, clique em **Revogar licença** (no topo da página).
3. Volte à lista, abra os **três pontos** do **PDV Desktop** antigo, clique em **Excluir** e depois crie um novo **PDV Desktop** em **Novo Dispositivo**.

## Parte 4: instalação e nova vinculação (máquina nova)

1. Na máquina nova, baixe os instaladores oficiais:
    - [CPlug Server 2.12.10](https://cdn.connectplug.com.br/cplugserver/CPServerInstall-2.12.10.exe)
    - [CPlug PDV 2.12.10](https://cdn.connectplug.com.br/pos2/CPlugPdv2Install-2.12.10.exe)

    !!! tip "Versão mais recente"
        Os links acima são da versão 2.12.10. A versão atual sempre fica no ERP, em **Dispositivos > Baixar aplicativos**.

2. Execute os instaladores com as configurações padrão.
3. No ERP, pegue os novos PINs gerados. Informe o PIN do servidor no painel do novo servidor local e o PIN do PDV no aplicativo do caixa.

## Resultado esperado

- O novo servidor local faz uma carga limpa e sincronizada a partir da nuvem, e o PDV Desktop abre sem registros presos ou corrompidos do servidor anterior.

## Cenários especiais

??? question "A máquina antiga queimou ou está inacessível"
    Pule as Partes 1 e 2 e comece pelo ERP:

    1. Em **Dispositivos > Terminais & Dispositivos**, abra o **Servidor** e clique em **Revogar licença**. Isso desvincula o ID da placa-mãe antiga.
    2. Exclua o **PDV Desktop** antigo e crie um novo.
    3. Siga a Parte 4 na máquina nova.

??? question "A máquina veio de outra loja (outra conta no mesmo hardware)"
    O computador tem arquivos da conta anterior que precisam ser limpos:

    1. No Gerenciador de Tarefas (**Ctrl + Shift + Esc**) > **Detalhes**, finalize a árvore de processos do `CPServer.exe`.
    2. Em `C:\`, renomeie a pasta `data` com a identificação da loja antiga (ex.: `data.loja_antiga.old`). O MongoDB cria um banco 100% limpo.
    3. Pressione **Windows + R**, digite `%appdata%` e pressione **Enter**.
    4. Renomeie a pasta do PDV adicionando `.old` (ex.: `ConnectPlug PDV.loja_antiga.old`). O aplicativo do caixa passa a pedir um novo PIN.
    5. Entre no ERP da **nova conta** do cliente, gere os PINs de Servidor e PDV e informe nos sistemas locais.

**Relacionados:** [Migração e troca de servidor local (ERP 1.0)](trocar-servidor-erp1.md) · [Configuração de IP fixo no Windows](../infraestrutura/ip-fixo-no-windows.md)

<span class="palavras-chave">trocar servidor migração cplug server cpserver mongodb banco corrompido revogar licença pin pdv desktop formatar computador novo appdata pasta data</span>
