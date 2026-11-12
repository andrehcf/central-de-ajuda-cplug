---
title: NF-e de devolução de ativo em comodato (ex.: freezer)
description: Preencher a NF-e manual de devolução de um ativo (freezer, expositor) ao fornecedor, referenciando a nota de entrada.
codigo: "FISCAL-002"
modulo: Suporte técnico
tela: /dashboard/sale/outbound-invoices
atualizado: 2026-11-12
---

# NF-e de devolução de ativo em comodato (ex.: freezer)

<div class="cplug-meta" markdown>:material-cog-outline: Emissão manual · :material-tag-outline: ERP 2.0 · Fiscal · Devolução · :material-calendar-check: Atualizado em 12/11/2026</div>

**Objetivo:** preencher a NF-e de devolução de mercadoria ou ativo (exemplo: devolver ao fornecedor de sorvetes o freezer recebido em comodato).

!!! danger "Antes de começar"
    Peça a **nota fiscal de recebimento original** do item. Confira nela o nome exato, o código e o valor unitário: a devolução precisa sair idêntica.

    Os dados fiscais (CST/CSOSN, CFOP, alíquotas) são definidos pelo **contador** do cliente. Os valores abaixo são o caso mais comum.

## Etapa 1: cabeçalho da nota

1. Acesse **Vendas > NF-e > Emitir NF-e**.
2. Em **Chaves de acesso da NF-e referenciada**, informe a chave de 44 dígitos da nota original de compra do fornecedor.

## Etapa 2: destinatário (o fornecedor)

1. Selecione o cadastro do fornecedor ou preencha os dados dele como estão na nota de entrada. Exemplo fictício:
    - **Razão social:** Sorvetes Exemplo Ltda | **CNPJ:** 00.000.000/0001-00
    - **Inscrição estadual:** a da nota de entrada, com indicador **1 - Contribuinte ICMS**
    - **Endereço:** completo, igual ao da nota de entrada

## Etapa 3: dados da operação

1. **Natureza da operação:** DEVOLUÇÃO.
2. **Tipo de operação:** **Saída** (a mercadoria sai da loja de volta para o fornecedor).
3. **Finalidade de emissão:** **4 - Devolução de mercadoria**.
4. **Destino da operação:** 1 - Operação interna. **Presença do comprador:** 1 - Operação presencial.

## Etapa 4: produto e tributação

1. Informe código, descrição, quantidade e valor unitário **idênticos** aos da nota de entrada.
2. **Origem:** 0 - Nacional.
3. **ICMS e CFOP:** **900 - Outros** e **CFOP 5202** (devolução de compra para comercialização). Copie alíquotas, base de cálculo e valor do ICMS da nota de entrada.

    !!! note "900 é CSOSN"
        O código 900 é **CSOSN** (Simples Nacional). Empresa do regime normal usa o **CST** indicado pelo contador.

4. **PIS/COFINS:** situação tributária **99 - Outras operações**, com a base de cálculo no valor total do item (ou os percentuais da nota de entrada, conforme o contador).

## Etapa 5: pagamento

1. **Forma de pagamento:** 0 - À vista. **Meio de pagamento:** **90 - Sem pagamento**.
2. Deixe o **Valor do pagamento** em **0,00**. Qualquer outro valor faz a Sefaz rejeitar a nota por divergência de totais.
3. Salve e transmita.

## Resultado esperado

- A Sefaz autoriza a devolução, vinculada à nota de origem do fornecedor.

**Relacionados:** [NF-e de devolução (emissão manual)](nfe-de-devolucao-manual.md) · [Como emitir NF-e de devolução](../../vendas/nfe-de-devolucao.md) · [Como cadastrar naturezas de operação](../../configuracoes/natureza-de-operacao.md)

<span class="palavras-chave">devolução de ativo comodato freezer expositor fornecedor nf-e manual finalidade 4 cfop 5202 csosn 900 sem pagamento 90 chave referenciada</span>
