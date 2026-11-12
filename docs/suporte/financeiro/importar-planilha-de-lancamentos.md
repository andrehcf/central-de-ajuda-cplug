---
title: Importação de planilha de contas a pagar e a receber
description: Baixar o modelo oficial, preencher com os nomes exatos dos cadastros e importar lançamentos, inclusive já pagos.
codigo: "FINAN-001"
modulo: Suporte técnico
tela: /dashboard/finance/financial-transaction
atualizado: 2026-11-12
---

# Importação de planilha de contas a pagar e a receber

<div class="cplug-meta" markdown>:material-help-circle-outline: Processo operacional · :material-tag-outline: ERP 1.0 e ERP 2.0 · Financeiro · Importação · :material-calendar-check: Atualizado em 12/11/2026</div>

**Cenário:** baixar o modelo oficial de planilha, preencher e importar lançamentos financeiros. A estrutura do modelo não pode mudar: não exclua nem altere colunas.

## Regras de preenchimento

- **Campos livres:** Valor Original, Descontos/Taxas, Juros/Multa, Vencimento, Data da Competência, Data de Pagamento, Observações e Pago.
- **Campos vinculados:** **Conta**, **Método de Pagamento** e **Categoria** dependem de cadastros do ERP. O nome na planilha precisa ser **idêntico** ao cadastrado (letras, espaços e acentos), senão a importação dá erro.
- **Status pago:** para importar como pago, a coluna **Pago** deve ter exatamente **SIM**. No ERP legado, se o layout não fizer a baixa automática, selecione e baixe os lançamentos depois da importação.

## Etapa 1: baixar o modelo

- **ERP 2.0:** acesse **Finanças > Lançamentos**, clique em **Mais ações** e escolha **Importar recebimentos** ou **Importar despesas**. No painel **Importar Planilha**, baixe a planilha modelo (XLSX, até 10.000 linhas ou 5 MB).
- **ERP 1.0 (legado):** acesse **Financeiro > Contas a Pagar** (ou Contas a Receber) > **Importar** e clique no link azul **Modelo de planilha**.

## Etapa 2: preencher

1. Abra a planilha e preencha os lançamentos, uma linha por lançamento.
2. Preencha **Conta**, **Método de Pagamento** e **Categoria** com a grafia idêntica aos cadastros do ERP.
3. Nos títulos já quitados, digite **SIM** na coluna **Pago** e informe a data retroativa em **Data de Pagamento**.
4. Salve o arquivo sem mudar as colunas.

## Etapa 3: importar

1. Volte à tela onde baixou o modelo.
2. Envie o arquivo preenchido e clique em **Importar**.

## Resultado esperado

- Linhas com **Pago = SIM** entram já como pagas, com a data da coluna **Data de Pagamento** (e não a data de hoje).
- Os lançamentos caem nas contas, categorias e métodos certos, desde que os nomes batam com os cadastros ativos.

**Relacionados:** [Como lançar uma conta a pagar ou a receber](../../financas/contas-a-pagar-e-receber.md) · [Como organizar o plano de contas](../../financas/plano-de-contas.md)

<span class="palavras-chave">importar planilha contas a pagar contas a receber importar despesas importar recebimentos modelo xlsx pago sim data de pagamento retroativa lançamentos em massa</span>
