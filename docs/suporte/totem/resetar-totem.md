---
title: Reset e reconfiguração do aplicativo do totem
description: Erros de TEF ou de sincronização no totem. Limpar dados no Android, recriar a VPN, revogar a licença e vincular de novo.
codigo: "TOTEM-001"
modulo: Suporte técnico
atualizado: 2026-11-12
---

# Reset e reconfiguração do aplicativo do totem

<div class="cplug-meta" markdown>:material-alert-circle-outline: Erro · :material-tag-outline: ERP Legado · Totem · TEF · Sincronização · :material-calendar-check: Atualizado em 12/11/2026</div>

**Sintoma:** falha no pagamento pelo TEF, falha na sincronização (produtos, imagens, preços) ou necessidade de resetar a comunicação do terminal de autoatendimento.

**Causa:** cache corrompido no Android do totem ou dessincronização da licença e da VPN GSurf/SiTef no ERP.

!!! info "Antes de começar"
    - **Senha de administrador dos aplicativos:** no ERP Legado, em **Configurações > Dados da Empresa**, bloco **Aplicativos**, campo **Senha de Administrador** (no ERP 2.0 a tela se chama **Dados do negócio**).
    - **Usuário administrador do ERP:** para revogar a licença.
    - **Totem V2:** código da empresa, usuário e senha do terminal.

!!! note "No ERP 2.0"
    Os aplicativos ficam em **Dispositivos > Terminais & Dispositivos**, e a VPN em **três pontos > Gerenciar métodos de pagamento > Configurações TEF**. Veja [Configuração e instalação do TEF (ERP 2.0)](../erp/tef-erp2.md).

## Parte 1: fechar o aplicativo e limpar os dados no totem

1. Na tela principal de vendas do totem, toque no logotipo da CPlug, no rodapé.
2. Informe a **senha de administrador dos aplicativos**.
3. Na área administrativa, toque em **Fechar Aplicativo** para voltar à tela inicial do Android.
4. Abra as **Configurações** do Android.
5. Vá em **Aplicativos** (ou Apps e notificações).
6. Selecione o aplicativo do **Totem**.
7. Toque em **Armazenamento** (ou Armazenamento e cache).
8. Toque em **Limpar dados** (ou Limpar armazenamento) e confirme. Isso apaga o cache e as conexões antigas.

## Parte 2: reset do terminal no ERP

1. No computador da loja, acesse o ERP e vá em **Ponto de Venda > Aplicativos**.
2. Abra o cadastro do aplicativo do totem.
3. Expanda **Configurações da SITEF**.
4. Em **Configurações da VPN**, clique no botão vermelho **Cancelar Terminal**.
5. No rodapé, à direita, clique em **Revogar licença**.
6. Na janela, digite `revogar`, selecione o usuário administrador do ERP, informe a senha e confirme em **Revogar licença**.
7. Role até o fim e clique no botão verde **Salvar**.
8. Volte a **Ponto de Venda > Aplicativos** e abra de novo o cadastro do totem.
9. Expanda **Configurações da SITEF** e, em **Configurações da VPN**, clique em **Cadastrar Terminal**.
10. Na janela **CRIAR NOVO TERMINAL (GSURF)**, em **Descrição**, digite `totem` e clique em **Confirmar**.
11. Role até o fim e clique em **Salvar**.

## Parte 3: nova vinculação no totem

Abra o aplicativo no totem e siga conforme a versão:

- **Totem V1:** no ERP, na linha do aplicativo, clique no ícone verde para gerar as credenciais. Informe o **PIN** e o **Código de Login** na tela inicial do totem.
- **Totem V2:** na tela inicial do totem, entre com o código da empresa, o usuário e a senha do terminal.

## Resultado esperado

- O aplicativo faz uma carga completa do servidor, volta a se comunicar com o TEF/SiTef e atualiza imagens, preços e nomes dos produtos.

**Relacionados:** [Configuração e instalação do TEF (ERP 2.0)](../erp/tef-erp2.md) · [Configuração e instalação da integração TEF (ERP Legado)](../erp/tef-erp1.md)

<span class="palavras-chave">totem autoatendimento reset limpar dados android cancelar terminal revogar licença vpn gsurf sitef tef não sincroniza imagens preços totem v1 v2 pin</span>
