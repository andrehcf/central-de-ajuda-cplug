---
title: Natureza de operação (De/Para fiscal)
description: Criar regras De/Para de CFOP, ICMS e PIS/COFINS na natureza de operação e aplicar na nota gerada a partir da venda.
codigo: "FISCAL-004"
modulo: Suporte técnico
tela: /dashboard/settings/fiscal-settings/nature-operations
atualizado: 2026-11-12
---

# Natureza de operação (De/Para fiscal)

<div class="cplug-meta" markdown>:material-cog-outline: Configuração · Cadastro fiscal · :material-tag-outline: ERP Legado e ERP 2.0 · Faturamento · :material-calendar-check: Atualizado em 12/11/2026</div>

**Cenário:** criar regras automáticas de troca fiscal ("De/Para" de CFOP, ICMS e PIS/COFINS) na natureza de operação e aplicar na emissão de notas a partir de vendas. As duas versões do ERP têm os mesmos recursos nessa tela; muda o caminho.

!!! warning "Só funciona em nota gerada a partir de venda"
    As regras da natureza de operação valem **apenas para notas geradas a partir de uma venda**. Na nota 100% manual (sem venda), não há seleção automática: os dados fiscais são digitados item por item.

## Etapa 1: criar a natureza de operação

1. Acesse a tela de cadastro:
    - **ERP 2.0:** **Configurações > Fiscal > Natureza de Operações**;
    - **ERP Legado:** **engrenagem > Configurações Fiscais > Natureza da Operação**.
2. Crie ou edite uma natureza.
3. Preencha o **Nome** e, se quiser, a **Descrição**.
4. Na seção **CFOP**, defina a troca:
    - **De:** o CFOP padrão do produto;
    - **Para:** o CFOP que a nota deve usar com esta natureza.
5. Se precisar trocar grupos tributários, use **Grupo de ICMS** e **Grupo de PIS/COFINS** com a mesma lógica De/Para.
6. Clique em **Salvar**.

## Etapa 2: aplicar na emissão

1. Acesse **Vendas > Vendas**.
2. Localize a venda e comece a gerar a nota (**três pontos > Gerar nota fiscal**).
3. Na janela **Dados complementares**, selecione a natureza de operação criada.
4. Conclua e transmita a nota.

## Resultado esperado

- Com a natureza selecionada, o sistema aplica o De/Para e troca as informações fiscais (CFOP, tributação) de todos os produtos que batem com as regras, sem alteração manual item por item.

**Relacionados:** [Como cadastrar naturezas de operação](../../configuracoes/natureza-de-operacao.md) · [NF-e referenciando NFC-e](nfe-referenciando-nfce.md)

<span class="palavras-chave">natureza de operação de para cfop grupo de icms pis cofins substituição regra fiscal dados complementares nota a partir da venda</span>
