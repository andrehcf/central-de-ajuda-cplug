---
title: Métodos de pagamento na POS (PDV PRO e Atendimento PRO)
description: A POS não pede a aproximação do cartão. Vincular formas de pagamento e bandeiras ao dispositivo no ERP.
codigo: "ERP-008"
modulo: Suporte técnico
tela: /dashboard/apps
atualizado: 2026-11-12
---

# Métodos de pagamento na POS (PDV PRO e Atendimento PRO)

<div class="cplug-meta" markdown>:material-cog-outline: Configuração · :material-tag-outline: ERP Legado e ERP 2.0 · Dispositivos · Meios de pagamento · :material-calendar-check: Atualizado em 12/11/2026</div>

**Sintoma:** ao finalizar a venda na POS pelo aplicativo (PDV PRO ou Atendimento PRO), o aparelho não pede a aproximação, inserção ou leitura do cartão.

**Causa:** as formas de pagamento e bandeiras não estão vinculadas ao dispositivo no ERP. Sem o vínculo, o aplicativo não reconhece o método e não aciona o leitor.

!!! warning "Pré-requisito"
    O contrato de cartões e as bandeiras de débito e crédito precisam estar criados. Veja [Configuração de contrato de cartões (ERP Legado)](contrato-de-cartoes-legado.md) ou, no ERP 2.0, [Como cadastrar as taxas do cartão](../../financas/taxas-do-cartao.md).

## No ERP 2.0

1. No menu lateral, acesse **Dispositivos > Terminais & Dispositivos**.
2. Localize a POS do cliente.
3. Clique nos **três pontos** no fim da linha do dispositivo.
4. Selecione **Gerenciar métodos de pagamento**.
5. Ligue as formas de pagamento que a POS vai aceitar (PIX, Dinheiro, Cartão de Crédito, Cartão de Débito e as criadas pela loja). Na mesma tela fica a seção **Configurações TEF**.
6. Salve.

## No ERP Legado

1. Acesse **Ponto de Venda > Aplicativos**.
2. Na **Listagem dos Aplicativos**, localize a POS.
3. Na coluna **Ações**, clique no ícone de **cartão com lupa**.
4. Inclua os métodos de pagamento e as bandeiras do contrato de cartões.
5. Salve.

## Resultado esperado

- Depois do vínculo e da sincronização do aplicativo na POS, ao escolher cartão no fechamento da venda o aparelho pede a aproximação/inserção do cartão.

**Relacionados:** [Configuração e instalação do TEF (ERP 2.0)](tef-erp2.md) · [Como cadastrar formas de pagamento](../../financas/formas-de-pagamento.md)

<span class="palavras-chave">pos pdv pro atendimento pro não pede cartão aproximação gerenciar métodos de pagamento bandeiras terminais e dispositivos maquininha</span>
