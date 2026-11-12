---
title: Configuração de contrato de cartões (ERP Legado)
description: Preencher o contrato de cartões e métodos de pagamento no ERP Legado para conciliação e vínculo com PDV, TEF e POS.
codigo: "ERP-004"
modulo: Suporte técnico
atualizado: 2026-11-12
---

# Configuração de contrato de cartões (ERP Legado)

<div class="cplug-meta" markdown>:material-cog-outline: Configuração · :material-tag-outline: ERP Legado · Financeiro · :material-calendar-check: Atualizado em 12/11/2026</div>

**Objetivo:** preencher o contrato de cartões e os métodos de pagamento (PIX, cartões) para a conciliação bancária e o vínculo com o PDV/TEF.

!!! info "No ERP 2.0"
    O contrato fica em **Finanças > Contrato de cartões e outros**, com nomes de campo diferentes. Veja o manual [Como cadastrar as taxas do cartão](../../financas/taxas-do-cartao.md).

## Etapa 1: acesso ao menu

1. No ERP Legado, acesse **Financeiro > Contrato de Cartões**.
2. **Edite** um contrato que já existe ou clique para **criar** um novo.

## Etapa 2: dados gerais do contrato

1. **Título:** nome para identificação (ex.: PIX, Stone).
2. **Provedor:** a operadora/provedora correta.
3. **Conta para Crédito:** a conta bancária onde os valores caem (ex.: Itaú).
4. Deixe a caixa **Ativo** marcada.

## Etapa 3: regras de recebimento (parcelas)

1. **Agrupamentos:** marque *Agrupamento automático* ou *Agrupar por bandeira* para unificar os lançamentos.
2. **Fluxo de caixa:** ative *Definir como pago todas as entradas nesse método* para baixa automática.
3. **Calendário comercial:** se o contrato prever, marque *Deposita pagamento apenas em dias úteis* e/ou *Vencimento apenas em dias úteis*.
4. **Feriados:** em *Dias úteis considerando feriados*, marque Municipais, Estaduais, Nacionais e/ou Internacionais, conforme a praça do cliente.

## Etapa 4: modos de captura

1. No fim da página, use os botões azuis para as regras de cada bandeira:
    - **+ Configuração Débito:** método, bandeira, taxa %, tarifa em R$ e dias para o 1º pagamento. Repita para todas as bandeiras de débito aceitas.
    - **+ Configuração Crédito:** bandeira e taxas das parcelas. Repita para todas as bandeiras de crédito aceitas.
2. Clique em **Salvar**.

!!! warning "Uso em POS (PDV PRO e Atendimento PRO)"
    Para receber direto na maquininha POS, é **obrigatório** configurar **cada bandeira** que a loja vai aceitar. Bandeira não configurada e ativada aqui faz o aplicativo da POS não pedir a aproximação/inserção do cartão.

## Resultado esperado

- As formas de pagamento respeitam as baixas automáticas e a conciliação de taxas no financeiro do ERP.

**Relacionados:** [Métodos de pagamento na POS](metodos-de-pagamento-na-pos.md) · [Integração TEF no ERP Legado](tef-erp1.md)

<span class="palavras-chave">contrato de cartões legado erp 1 provedor conta para crédito agrupamento bandeira taxa débito crédito dias úteis feriados pos erp legado</span>
