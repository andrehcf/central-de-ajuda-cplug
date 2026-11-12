---
title: Migração e troca de servidor local (ERP 1.0 / CPlug Server)
description: Trocar o servidor local no ERP 1.0, com fechamento forçado do caixa pelo Console e nova implantação.
codigo: "ERP-003"
modulo: Suporte técnico
atualizado: 2026-11-12
---

# Migração e troca de servidor local (ERP 1.0 / CPlug Server)

<div class="cplug-meta" markdown>:material-alert-circle-outline: Erro · Infraestrutura · :material-tag-outline: ERP 1.0 (legado) · Banco de dados · :material-calendar-check: Atualizado em 12/11/2026</div>

**Quando usar:** falha no servidor local da versão 1.0, troca de máquina ou banco MongoDB corrompido, exigindo encerramento forçado pelo Console e nova implantação.

!!! danger "Alerta crítico"
    O cliente **não pode** ter mesas, comandas ou entregas abertas, e todos os caixas devem estar fechados. Se o PDV local estiver parado por falha física, force o fechamento pela nuvem nos passos abaixo.

## Parte 1: processos obrigatórios no ERP (nuvem)

1. No ERP, vá em **Ponto de Venda > Gerência** e expanda a linha do caixa **Aberto**.
2. Pressione **F12**, abra a aba **Console**, digite `showBtnPosForceClosure();` e pressione **Enter**. Feche o F12 e clique no botão **Forçar Fechamento do Caixa** que apareceu na página.
3. Vá em **Ponto de Venda > Cadastro** e abra o primeiro PDV.
4. Pressione **F12**, abra o **Console**, digite `editServerPos();` e pressione **Enter**. Feche o F12, limpe o campo **Applicativo Offline**, que aparece no formulário (removendo o servidor offline), e clique em **Salvar**. Repita em todos os PDVs.

## Parte 2: desinstalação na máquina antiga

1. No Gerenciador de Tarefas (**Ctrl + Shift + Esc**) > aba **Detalhes**, finalize a árvore de processos do `CPServer.exe`.
2. No Painel de Controle, desinstale o **MongoDB**.
3. Em `C:\`, renomeie a pasta `data` para `data.old`.
4. Pressione **Windows + R**, digite `%appdata%` e renomeie a pasta do PDV adicionando `.old` ao final.

## Parte 3: novo ambiente no ERP

1. Vá em **Ponto de Venda > Aplicativos**. Exclua o servidor antigo e clique em **Cadastrar novo aplicativo > Novo Servidor**.
2. Na linha do novo servidor, clique no ícone verde de seta (**Gerar Pin para acessar o aplicativo**). Crie também o novo terminal em **Cadastrar novo aplicativo > Novo Terminal** e gere o PIN dele do mesmo jeito.

## Parte 4: instalação e vinculação na máquina nova

1. Baixe e instale os pacotes da versão 1.0:
    - CPlug Server (no servidor): [CPServerInstall-2.12.8](https://cdn.connectplug.com.br/cplugserver/CPServerInstall-2.12.8.exe)
    - CPlug PDV (nos terminais): [CPlugPdv2Install-2.12.8](https://cdn.connectplug.com.br/pos2/CPlugPdv2Install-2.12.8.exe)
2. Abra o CPServer na máquina servidora e informe o PIN do servidor. Abra o PDV Desktop e informe o PIN do terminal.
3. No ERP, vá em **Ponto de Venda > Cadastro** e edite cada PDV. O campo **Applicativo Offline** fica escondido: abra o **Console** (F12), digite `editServerPos();` e pressione **Enter**, como na Parte 1. Selecione o novo servidor e salve.

## Resultado esperado

- O MongoDB local é recriado do zero. Ao abrir o PDV, o sistema baixa uma sincronização completa da nuvem e mostra os caixas prontos para novas aberturas.

## Cenários especiais

??? question "A máquina antiga queimou ou está inacessível"
    Pule a Parte 2. Faça a Parte 1 (fechamento forçado e limpeza do servidor em cada PDV), depois a Parte 3 e a Parte 4 na máquina nova.

??? question "A máquina veio de outra loja (outra conta no mesmo hardware)"
    Veja o mesmo cenário em [Migração e troca de servidor local (ERP 2.0)](trocar-servidor-erp2.md): a limpeza local (`CPServer.exe`, pasta `data`, pasta do PDV em `%appdata%`) é igual nas duas versões.

**Relacionados:** [Migração e troca de servidor local (ERP 2.0)](trocar-servidor-erp2.md)

<span class="palavras-chave">trocar servidor erp 1 legado migração cpserver mongodb forçar fechamento do caixa console f12 showbtnposforceclosure editserverpos pin aplicativos</span>
