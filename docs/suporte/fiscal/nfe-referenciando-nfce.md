---
title: NF-e referenciando NFC-e (CFOP 5929/6929)
description: Emitir uma NF-e (modelo 55) referenciando uma NFC-e já emitida, para faturamento ou transporte.
codigo: "FISCAL-003"
modulo: Suporte técnico
tela: /dashboard/sale/sales
atualizado: 2026-11-12
---

# NF-e referenciando NFC-e (CFOP 5929/6929)

<div class="cplug-meta" markdown>:material-cog-outline: Faturamento · :material-tag-outline: ERP 2.0 · Fiscal · Notas referenciadas · :material-calendar-check: Atualizado em 12/11/2026</div>

**Objetivo:** emitir uma NF-e (modelo 55) referenciando uma ou mais NFC-e (modelo 65) já emitidas, para faturamento de cupons ou transporte.

!!! info "Antes de começar"
    - Cadastro do destinatário completo: CNPJ/CPF, inscrição estadual, endereço e e-mail.
    - Chave de acesso (44 dígitos) da NFC-e da venda.
    - O CFOP correto é definido pelo **contador** do cliente.

## Passo a passo

1. Acesse **Vendas > Vendas**.
2. Localize a venda do cupom já emitido. Abra para editar, vincule o cliente com cadastro completo e clique em **Salvar**.
3. Nos **três pontos** da linha da venda, escolha **Gerar nota fiscal > Gerar NF-e**.
4. Na janela **Dados complementares**:
    - **CFOP:** `5929` (cliente do mesmo estado) ou `6929` (cliente de outro estado);
    - marque **Utilizar este CFOP para todos os produtos.**;
    - marque **Cliente contribuinte do ICMS?** e **Nota para Consumidor Final?** conforme o cliente;
    - clique em **Salvar**.
5. No espelho da nota, role até a seção de **documentos referenciados**.
6. Informe a **chave de acesso de 44 dígitos** da NFC-e emitida no PDV.
7. Confira os valores e **transmita** para a Sefaz.

## Resultado esperado

- O XML sai com a tag `<NFref>` preenchida com a chave da NFC-e, indicando ao fisco que o imposto foi recolhido na NFC-e de origem e que a NF-e serve para transporte ou faturamento.

**Relacionados:** [Como emitir uma NF-e de venda](../../vendas/emitir-nfe.md) · [Natureza de operação (De/Para fiscal)](natureza-de-operacao-de-para.md)

<span class="palavras-chave">nf-e referenciada nfc-e para nf-e cupom para nota cfop 5929 6929 nfref chave de acesso faturamento transporte gerar nf-e</span>
