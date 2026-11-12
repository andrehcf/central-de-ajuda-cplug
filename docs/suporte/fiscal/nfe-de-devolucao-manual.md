---
title: NF-e de devolução (emissão manual)
description: Emitir uma NF-e de devolução 100% manual, sem venda, com chave referenciada, finalidade 4 e pagamento zerado.
codigo: "FISCAL-005"
modulo: Suporte técnico
tela: /dashboard/sale/outbound-invoices
atualizado: 2026-11-12
---

# NF-e de devolução (emissão manual)

<div class="cplug-meta" markdown>:material-cog-outline: Emissão fiscal · :material-tag-outline: ERP 2.0 · Vendas · Fiscal · :material-calendar-check: Atualizado em 12/11/2026</div>

**Cenário:** emitir uma nota de devolução 100% manual, sem partir de uma venda.

!!! info "Campos obrigatórios"
    Na devolução, a Sefaz exige a identificação do documento original: sem a **chave de acesso** da nota de origem, a nota não é transmitida. Os dados financeiros ficam zerados, para não gerar cobrança.

## Etapa 1: abrir a tela e identificar o cliente

1. Acesse **Vendas > NF-e > Emitir NF-e**.
2. Em **Chaves de acesso da NF-e referenciada**, informe os 44 dígitos da nota que deu origem à devolução.
3. Em **Dados do cliente**:
    - **Cliente cadastrado:** digite o nome no campo **Cliente** e selecione. O resto é preenchido.
    - **Cliente sem cadastro:** deixe **Cliente** em branco e preencha nome, tipo de pessoa, endereço completo e documentos.
4. Documentos: **CPF** (pessoa física) ou **CNPJ** e **Inscrição estadual** (pessoa jurídica).
5. Se o destinatário não tem inscrição estadual, escolha o indicador **2 - Contribuinte isento** ou **9 - Não contribuinte**.

## Etapa 2: dados da operação

1. **Natureza da operação:** DEVOLUÇÃO.
2. **Tipo de operação:** depende de quem devolve:
    - **Entrada:** o cliente devolveu uma mercadoria que a loja vendeu;
    - **Saída:** a loja devolve ao fornecedor uma mercadoria que comprou.
3. **Finalidade de emissão:** **4 - Devolução de mercadoria**.
4. **Destino da operação:** 1 - Operação interna (ou conforme o estado do cliente). **Presença do comprador:** 1 - Operação presencial.

## Etapa 3: produtos e dados fiscais

1. Em **Itens**, pesquise o produto ou preencha código, descrição, quantidade, unidade, valor unitário e NCM. Tudo **idêntico** à nota de origem.
2. **Origem:** 0 - Nacional.
3. Preencha situação tributária, alíquotas e o **CFOP de devolução** informados pelo **contador**, para a nota não ser rejeitada.

## Etapa 4: pagamento e salvar

1. **Forma de pagamento:** 0 - À vista.
2. **Meio de pagamento:** **90 - Sem pagamento**.
3. **Valor do pagamento:** exatamente **0,00**. Qualquer outro valor faz a Sefaz rejeitar a nota.
4. Salve a nota.

## Etapa 5: transmitir

1. O sistema volta para a lista de notas.
2. Localize a nota nova, com status **Pendente**.
3. Nos **três pontos** da linha, clique em **Transmitir NF-e**.

## Resultado esperado

- A Sefaz valida a devolução (finalidade 4) referenciando a chave informada, gera XML e DANFE e nenhum lançamento financeiro é criado.

**Relacionados:** [Como emitir NF-e de devolução](../../vendas/nfe-de-devolucao.md) · [NF-e de devolução de ativo em comodato](devolucao-de-ativo.md) · [Como resolver uma nota rejeitada](../../vendas/nota-rejeitada.md)

<span class="palavras-chave">nota de devolução manual nf-e devolução sem venda finalidade 4 chave referenciada entrada saída sem pagamento 90 valor zerado transmitir</span>
