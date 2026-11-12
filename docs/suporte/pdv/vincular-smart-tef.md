---
title: Vinculação do Smart TEF ao PDV
description: Vincular a maquininha Smart TEF (POS) ao frente de caixa pelo QR Code e associar o contrato de cartões.
codigo: "PDV-002"
modulo: Suporte técnico
atualizado: 2026-11-12
---

# Vinculação do Smart TEF ao PDV

<div class="cplug-meta" markdown>:material-cog-outline: Configuração · :material-cash-register: PDV · TEF · :material-tag-outline: PDV desktop · :material-calendar-check: Atualizado em 12/11/2026</div>

**Objetivo:** vincular a maquininha Smart TEF (POS) ao frente de caixa (PDV) pelo aplicativo Smart TEF e associar o contrato de cartões.

!!! info "Antes de começar"
    - Contrato de cartões configurado e ativo no ERP (no ERP 2.0: **Finanças > Contrato de cartões e outros**).
    - Maquininha Smart TEF (POS) de modelo homologado.

## Etapa 1: ativação na maquininha

1. Na maquininha Smart TEF, abra o aplicativo **CPlug Pay** (é o aplicativo que o PDV pede para ler o QR Code).
2. Use a opção de ler QR Code do aplicativo. A câmera do aparelho abre.

## Etapa 2: vinculação no frente de caixa

1. No computador do PDV, clique no menu (três barras), no canto superior esquerdo, e selecione **Área administrativa** (atalho **F11**). Entre com usuário e senha de gerente/administrador.
2. No menu da esquerda, abra **Operações TEF > CPlug Pay**.
3. O PDV mostra um QR Code com a mensagem "Realize a leitura do QRCode pelo aplicativo CPlug Pay". Aponte a câmera da maquininha para ele para sincronizar.

## Etapa 3: vínculo do contrato de cartões

1. Ainda na Área administrativa do PDV, abra **Operações TEF > Habilitar / Desabilitar**. Se a tela mostrar só a mensagem **TEF não instalado.**, a instalação do TEF ainda não foi feita no PDV: fale com o suporte.
2. No campo de TEF correspondente, vincule o contrato de cartões configurado no ERP.
3. Clique em **Salvar**.

## Resultado esperado

- A maquininha mostra o status de conectada e sincronizada com o caixa e fica pronta para vender.

**Relacionados:** [Como cadastrar as taxas do cartão](../../financas/taxas-do-cartao.md) · [Falha na aproximação de cartão no PINPAD](falha-aproximacao-pinpad.md)

<span class="palavras-chave">smart tef pos maquininha qr code cplug pay operações tef área administrativa habilitar desabilitar tef não instalado contrato de cartões vincular</span>
