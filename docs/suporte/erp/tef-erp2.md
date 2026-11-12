---
title: Configuração e instalação do TEF (ERP 2.0)
description: Credenciamento, VPN do terminal, contrato de cartões e instalação do TEF no PDV, no ERP 2.0.
codigo: "ERP-10"
modulo: Suporte técnico
tela: /dashboard/apps
atualizado: 2026-11-12
---

# Configuração e instalação do TEF (ERP 2.0)

<div class="cplug-meta" markdown>:material-cog-outline: Configuração · Integração · :material-tag-outline: ERP 2.0 · TEF · PDV · Finanças · :material-calendar-check: Atualizado em 12/11/2026</div>

**Objetivo:** credenciar, configurar no ERP e ativar o TEF no PDV (frente de caixa).

!!! info "Antes de começar"
    1. **Credenciamento:** o cliente pediu o credenciamento de **TEF** e de **PIX** pelo chat do suporte (são duas solicitações).
    2. **Plano:** módulo **TEF** e **Contrato de cartões** ativos no plano.
    3. **Acessos:** permissão de administrador no ERP e usuário e senha da **Área Administrativa do PDV** (gerente/administrador).
    4. **Hardware:** Pinpad ligado e funcionando no computador do PDV.

## Parte 1: terminal e VPN no ERP

1. Acesse **Dispositivos > Terminais & Dispositivos**.
2. Localize o terminal que vai receber o TEF.
3. Clique nos **três pontos** no fim da linha.
4. Selecione **Gerenciar métodos de pagamento**.
5. No fim da tela, em **Configurações TEF**, clique em **Configurações de VPN**.
6. Na janela, preencha **Nome da VPN** com a identificação física do terminal (ex.: PDV 1, TOTEM).
7. Clique em **Salvar**.

!!! warning "OTP"
    A janela avisa que reinstalar ou cancelar a VPN muda a OTP do TEF. Depois de mexer na VPN, refaça a instalação da Parte 3.

## Parte 2: contrato de cartões

1. Acesse **Finanças > Contrato de cartões e outros**.
2. Crie um contrato novo ou edite um sem uso e preencha:
    - **Descrição:** nome claro (ex.: PIX, Stone, Cielo).
    - **Provedor:** a operadora/provedora.
    - **Conta para crédito:** a conta bancária onde as vendas caem.
3. Ajuste as regras de recebimento:
    - **Agrupar por:** Método de pagamento, Bandeira de cartão ou Sem agrupamento.
    - **Definir todas as entradas como pagas neste contrato:** para baixa automática.
    - **Pagamentos são depositados apenas em dias úteis** e/ou **Habilitar vencimento apenas em dias úteis**, se o contrato prever, com os feriados da praça do cliente.
4. Cadastre as **taxas de cada bandeira** de débito e crédito aceita, como no manual [Como cadastrar as taxas do cartão](../../financas/taxas-do-cartao.md).

## Parte 3: instalação no PDV (frente de caixa)

No computador onde o PDV está instalado:

1. Faça a **sincronização manual do CPServer** e depois do aplicativo do **PDV**.
2. Abra a **Área Administrativa do PDV**: menu (três barras) no canto superior esquerdo > **Área Administrativa** > credenciais de gerente/administrador.
3. No menu da esquerda, abra **Operações TEF > Instalação**.
4. Confira os dados vindos do ERP:
    - **Gateway:** SITEF
    - **OTP:** vem automaticamente depois de criar a VPN no ERP
    - **ID da Empresa:** conforme o cadastro
    - **IP do Servidor Local:** `127.0.0.1`
5. Clique no botão azul **INSTALAR**, no rodapé.
6. Aguarde a mensagem de instalação concluída.

## Resultado esperado

- **Pinpad:** o PDV se comunica com o Pinpad, que emite o sinal sonoro e/ou mostra a mensagem de pronto.
- **Venda:** numa venda com forma de pagamento de cartão integrado (TEF), a tela do TEF abre pedindo a inserção, aproximação ou leitura do cartão/QR Code.

**Relacionados:** [Configuração e instalação da integração TEF (ERP Legado)](tef-erp1.md) · [Métodos de pagamento na POS](metodos-de-pagamento-na-pos.md) · [Falha na aproximação de cartão no PINPAD](../pdv/falha-aproximacao-pinpad.md)

<span class="palavras-chave">tef erp 2 sitef vpn nome da vpn otp configurações tef gerenciar métodos de pagamento contrato de cartões pinpad operações tef instalação credenciamento</span>
