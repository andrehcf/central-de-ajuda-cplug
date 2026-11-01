---
title: Como cadastrar uma conta bancária
description: Cadastre as contas do banco e do caixa da empresa para controlar saldos, lançamentos e o pagamento das compras.
codigo: "07.01"
modulo: Finanças
tela: /dashboard/finance/bank-accounts
atualizado: 2026-11-01
---

# Como cadastrar uma conta bancária

<div class="cplug-meta" markdown>:material-clock-outline: 8 minutos · :material-format-list-numbered: 5 passos · :material-calendar-check: Atualizado em 01/11/2026</div>

As **contas bancárias** são os lugares por onde o dinheiro da empresa entra e sai: a conta do banco, a gaveta do caixa ou uma "caixinha". Todo pagamento e recebimento do sistema fica ligado a uma delas. Assim você acompanha o **saldo** de cada uma.

Elas também são **obrigatórias** em outras telas. Por exemplo, ao [importar a nota fiscal de compra](../estoque/importar-nota-de-compra.md), o sistema pede de qual conta sai o pagamento.

## Entenda o conceito

No sistema, "conta bancária" é qualquer **lugar onde o dinheiro fica**: não só o banco. Pense em cada conta como uma **carteira** separada. Cada recebimento cai numa carteira, cada pagamento sai de uma carteira, e o saldo de cada uma é acompanhado separadamente.

### Os tipos de conta

| Tipo (campo Banco) | Para que serve | Exemplo |
| --- | --- | --- |
| **Um banco da lista** | A conta corrente da empresa. | "Banco do Brasil - Conta da loja" |
| **Não é um Banco (Ex: Conta Dinheiro, Caixinha)** | Dinheiro guardado fora do banco. | Cofre, caixinha do troco |
| **Outro Banco** | Banco que não está na lista. | Banco digital pouco conhecido |
| **Conta PDV** | A gaveta de **um caixa**. É criada junto com o ponto de venda. | "Caixa Balcão" |

### Como o saldo é calculado

**Saldo atual = Saldo Inicial + recebimentos − pagamentos**, contando a partir da **Data de Abertura**. Por isso, ao cadastrar uma conta que já existe no banco, use como saldo inicial o valor do extrato **no dia da data de abertura**: assim o sistema começa igual ao banco.

### As duas telas da conta

| Opção | O que mostra |
| --- | --- |
| **Ver Histórico** | O **extrato**: o **saldo de cada dia** e os lançamentos, com vencimento, data de pagamento/recebimento, tipo e usuário. |
| **Ver Transações** | O **Registro de Movimentações**: a "auditoria" da conta. Mostra cada lançamento criado, e também alterações de valor ou data, cancelamentos e restaurações. |

No teste, a conta nova "Banco do Brasil - Conta da loja" mostrou nas duas telas a linha **Saldo Inicial da Conta**, do tipo **Nova**, com R$ 1.500,00.

!!! info "O sistema já vem com duas contas"
    Toda loja começa com a **Conta Padrão** e a **Conta PDV Padrão** (a do caixa). Nenhuma das duas é de banco. Cadastre as contas reais da empresa, uma para cada banco.

Nos prints, o **quadrado vermelho** mostra onde você deve clicar ou digitar.

<div class="passos" markdown>

## Abra a tela de contas bancárias

No menu do lado esquerdo, clique em **Finanças** e depois em **Contas bancárias**. A lista mostra cada conta, o banco e o saldo atual.

Clique em **Nova Conta Bancária**, no canto de cima, à direita.

![Lista de contas bancárias com as duas contas padrão e o botão Nova Conta Bancária destacados](../imagens/07.01/01-lista.png){ loading=lazy }

## Preencha os dados da conta

- **Banco:** clique e escolha o banco. Digite parte do nome para achar mais rápido. Para dinheiro em espécie ou caixinha, escolha **Não é um Banco (Ex: Conta Dinheiro, Caixinha)**.
- **Nome da Conta Bancária:** vem com o nome do banco. Troque por um nome fácil de reconhecer. Exemplo: "Banco do Brasil - Conta da loja".
- **Saldo Inicial:** quanto havia na conta no dia da abertura. Confira no extrato do banco.
- **Data de Abertura:** a partir de que dia o sistema passa a controlar o saldo. Vem com a data de hoje.

![Formulário Nova Conta Bancária com Banco, Nome, Saldo Inicial, Data de Abertura, Selecionar unidades e Salvar destacados](../imagens/07.01/02-formulario.png){ loading=lazy }

## Escolha as lojas que usam a conta

Se a empresa tem mais de uma loja, clique em **Selecionar unidades** e marque as lojas que usam essa conta. A loja em que você está já vem marcada. Para todas, marque **Selecionar todas as lojas**.

Depois, clique em **Salvar** dentro dessa janela.

![Janela Selecionar unidades com Selecionar todas as lojas e a loja atual marcada destacados (um nome coberto de propósito)](../imagens/07.01/03-unidades.png){ loading=lazy }

## Salve a conta

Clique em **Salvar**, no canto de baixo, à direita. Aparece a mensagem **Conta bancária criada com sucesso**, e a conta entra na lista com o saldo inicial.

![Mensagem Conta bancária criada com sucesso e a nova conta na lista destacadas](../imagens/07.01/04-criada.png){ loading=lazy }

## Conheça as opções da conta

Nos **três pontinhos** no fim da linha da conta você tem:

- **Ver Transações:** o Registro de Movimentações (a auditoria da conta).
- **Ver Histórico:** o extrato, com o saldo de cada dia.
- **Editar:** muda os dados da conta.
- **Excluir:** apaga a conta.

![Menu da conta aberto com Ver Transações, Ver Histórico, Editar e Excluir destacados](../imagens/07.01/05-opcoes.png){ loading=lazy }

</div>

!!! tip "Boas práticas"
    - **Uma conta para cada lugar onde o dinheiro fica**: cada banco, o cofre, a caixinha. Não misture.
    - **Nomes que dizem tudo**: banco + finalidade (+ final da conta, se houver duas no mesmo banco).
    - **Saldo inicial igual ao extrato** do dia da data de abertura.
    - **Compare com o extrato do banco** toda semana, pelo **Ver Histórico**. Diferença é sinal de lançamento faltando.
    - **Não exclua conta com lançamentos.** Se ela deixou de ser usada, mantenha para não perder o histórico.

## Deu algum problema?

??? question "Não encontrei os campos de agência e número da conta"
    O cadastro pede só o banco e o nome. Se você tem mais de uma conta no mesmo banco, coloque algo no nome para diferenciar. Exemplo: "Itaú - final 1234".

??? question "A conta não aparece em outra loja"
    A conta só aparece nas lojas marcadas em **Selecionar unidades**. Abra a conta pelos três pontinhos, clique em **Editar** e marque a outra loja.

??? question "O saldo do sistema não bate com o banco"
    Abra **Ver Histórico** e compare dia a dia com o extrato. Confira também o **Saldo Inicial** e a **Data de Abertura**: o saldo inicial precisa ser o do extrato naquele dia.

??? question "Apareceu uma conta do tipo Conta PDV que eu não criei"
    Ela é criada junto com o **ponto de venda**: é a gaveta daquele caixa. Veja [Como cadastrar um ponto de venda](../ponto-de-venda/cadastrar-ponto-de-venda.md).

??? question "Na importação da nota de compra, a conta bancária é obrigatória"
    É isso mesmo: o pagamento da compra precisa sair de alguma conta. Escolha a conta na lista ou cadastre uma seguindo este manual.

**Relacionados:** [Como cadastrar formas de pagamento](formas-de-pagamento.md) · [Como importar a nota fiscal de compra (XML)](../estoque/importar-nota-de-compra.md)

<span class="palavras-chave">conta bancária banco caixa caixinha dinheiro saldo saldo inicial data de abertura conta padrão conta pdv nova conta finanças transações histórico unidades lojas</span>
