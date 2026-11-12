---
title: Configuração e instalação da integração TEF (ERP 1)
description: VPN SiTef, correção do ID da empresa pelo DevTools, contrato e instalação do TEF no PDV, no ERP 1.
codigo: "ERP-010"
modulo: Suporte técnico
atualizado: 2026-11-12
---

# Configuração e instalação da integração TEF (ERP 1)

<div class="cplug-meta" markdown>:material-cog-outline: Configuração · Integração · :material-tag-outline: ERP 1.0 (legado) · TEF · :material-calendar-check: Atualizado em 12/11/2026</div>

**Objetivo:** instalar a VPN SiTef no ERP, corrigir o ID da empresa, vincular o contrato e instalar o TEF no PDV.

**Por que dá problema:** o terminal precisa estar provisionado na VPN da operadora (GSurf/SiTef) pelo ERP. Além disso, o campo **ID da Empresa** no ERP 1 tem limite de caracteres errado, e sem o instalador interno do PDV as requisições não chegam ao Pinpad.

!!! info "Antes de começar"
    - Módulo de TEF contratado e ativo no plano (uma licença para cada terminal TEF físico).
    - Pinpad ligado via USB, com os drivers do fabricante instalados e funcionando no Windows.
    - Contrato de cartões criado: veja [Configuração de contrato de cartões (ERP legado)](contrato-de-cartoes-legado.md).

## Parte 1: VPN e ID SiTef no ERP 1

1. Acesse **Ponto de Venda > Aplicativos**.
2. Localize o terminal e abra para editar.
3. Desça até **Configurações da SITEF (Opcional)** e clique para expandir.
4. **Correção do ID da Empresa:** o campo **ID** aceita 8 dígitos, mas pode vir preenchido com 9 (causa falha). Clique com o botão direito **em cima do campo ID** e selecione **Inspecionar**.
5. O DevTools abre na linha do campo. Dê dois cliques no valor do atributo `value="XXXXXXXXX"`, **apague um zero excedente** para ficar com 8 dígitos e pressione **Enter**.
6. Em **Configurações da VPN**, clique em **Cadastrar Terminal**. O botão só aparece com licença de TEF disponível no plano: sem ela, a tela mostra "Você atingiu o limite de TEF utilizadas" e só o campo **Terminal (VPN)**, para escolher um terminal já cadastrado.
7. Na janela **CRIAR NOVO TERMINAL (GSURF)**, o CNPJ do cliente vem preenchido. Em **Descrição**, digite uma identificação (ex.: "PDV 1", "Caixa Comanda").
8. Clique em **Confirmar** e depois em **Salvar**, no canto inferior esquerdo.

## Parte 2: contrato de cartão

Crie ou altere o contrato de cartões com o provedor TEF correspondente, como em [ERP-004](contrato-de-cartoes-legado.md).

## Parte 3: instalação no PDV (frente de caixa)

No computador onde o PDV roda:

1. Faça a **sincronização** manual do **CPServer** e depois do aplicativo do **PDV**.
2. Clique no menu (três barras) no **canto superior esquerdo**.
3. Selecione **Área Administrativa** e entre com usuário e senha de gerente/administrador.
4. No menu da esquerda, abra **Operações TEF > Instalação**.
5. Confira os dados vindos do ERP: Gateway **SITEF**, ID da Empresa correto, IP do servidor local `127.0.0.1`.
6. Clique no botão azul **INSTALAR**, no rodapé.
7. Aguarde a mensagem de instalação concluída.

## Resultado esperado

- O PDV se comunica com o Pinpad, que emite o sinal sonoro ou a mensagem de pronto.
- Numa venda com forma de pagamento de cartão integrado, a tela do TEF abre pedindo a inserção ou aproximação do cartão.

**Relacionados:** [Configuração e instalação do TEF (ERP 2.0)](tef-erp2.md) · [Falha na aproximação de cartão no PINPAD](../pdv/falha-aproximacao-pinpad.md)

<span class="palavras-chave">tef sitef gsurf vpn cadastrar terminal id da empresa 8 dígitos inspecionar devtools pinpad operações tef instalação erp 1 legado</span>
