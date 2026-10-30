---
title: Como configurar os dados fiscais de um produto
description: Onde preencher NCM, origem, CEST, ICMS, PIS/COFINS e CFOP de cada produto para a nota fiscal sair sem erro.
codigo: "03.08"
modulo: Produtos
tela: /dashboard/tax-settings
atualizado: 2026-10-30
---

# Como configurar os dados fiscais de um produto

<div class="cplug-meta" markdown>:material-clock-outline: 5 minutos por produto · :material-format-list-numbered: 6 passos · :material-calendar-check: Atualizado em 30/10/2026</div>

Todo produto vendido com **nota fiscal** (o cupom do caixa, NFC-e, ou a NF-e) precisa dos dados fiscais preenchidos. Sem eles, o produto até aparece no caixa, mas a nota é **recusada pela Sefaz** ou nem chega a ser emitida.

!!! warning "Quem define os códigos fiscais é o seu contador"
    Este manual mostra **onde** e **como** preencher. **Quais** códigos usar (NCM, CFOP, situação do ICMS, PIS/COFINS) depende do produto, do estado e do regime da sua empresa, e quem decide é o contador.

    Antes de começar, peça ao contador uma lista com, para cada produto: **NCM**, **CEST** (se tiver), **Origem**, **ICMS**, **PIS/COFINS** e **CFOP**.

## O que é cada campo

Os exemplos abaixo são só para você reconhecer os códigos. **Não copie sem confirmar com o contador.**

| Campo | O que é, em palavras simples | Exemplo comum |
| --- | --- | --- |
| **NCM** | Código de 8 números que diz o que o produto é. É o mesmo em todo o Brasil. | Refrigerante: 2202.10.00 |
| **CEST** | Código usado quando o produto tem substituição tributária (ST). Nem todo produto tem. | Depende do produto |
| **Origem** | De onde vem a mercadoria. | 0 - Nacional |
| **ICMS** | Como o ICMS aparece na nota. No Simples Nacional, os códigos têm 3 números (CSOSN); no regime normal, 2 números (CST). | 102 - Simples Nacional sem permissão de crédito |
| **PIS & COFINS** | Como o PIS e a COFINS aparecem na nota. | Definido pelo contador |
| **CFOP padrão** | O tipo de operação da venda. | 5102 - venda de mercadoria comprada de terceiros · 5405 - a mesma venda, com substituição tributária |
| **IPI** | Imposto de indústria. A maioria do comércio e da alimentação não usa. | Em geral, fica vazio |
| **CST do IBS/CBS** e **Classificação tributária** | Campos novos da reforma tributária. | Preencha quando o contador orientar |

Nos prints, o **quadrado vermelho** mostra onde você deve clicar ou digitar.

<div class="passos" markdown>

## Abra a tela de parâmetros fiscais

No menu do lado esquerdo, clique em **Produtos** e depois em **Parâmetros fiscais**.

A lista mostra todos os produtos e a situação de cada imposto: **Definido** (já configurado) ou **Pendente** (falta configurar). Todo produto com **Pendente** em ICMS, PIS & COFINS ou CFOP pode dar problema na nota.

![Lista de parâmetros fiscais com as colunas Definido e Pendente e o ícone de ajustes destacados](../imagens/03.08/01-lista.png){ loading=lazy }

## Abra o produto

No fim da linha do produto, clique no **ícone de ajustes** (o desenho de três tracinhos com bolinhas). Se não aparecer, role a tabela para a direita.

Para encontrar um produto mais rápido, digite o nome na caixa de busca, no topo.

## Preencha as informações fiscais do produto

Na parte **Informações fiscais**:

- **NCM:** clique, digite o código ou parte do nome (ex.: "bebidas") e escolha a opção certa na lista.
- **Origem:** escolha de onde vem o produto. Na maioria dos casos, **0 - Nacional**.
- **CEST:** preencha só se o contador informar.

**Peso líquido**, **Peso bruto** e os campos de **FCP** só precisam ser preenchidos se o contador pedir.

![Informações fiscais com os campos NCM, Origem e CEST destacados](../imagens/03.08/02-informacoes.png){ loading=lazy }

## Escolha os grupos fiscais da sua loja

Role a tela até a parte **Configurações fiscais**. Ela tem uma seção com o **nome de cada loja (filial)**. Na seção da sua loja, escolha:

- **ICMS:** o grupo de ICMS que o contador indicou.
- **Pis & Cofins:** o grupo de PIS e COFINS.
- **CFOP padrão:** o tipo de operação, por exemplo 5102 ou 5405.
- **IPI:** só se a sua empresa usar.

![Seção da loja com ICMS, Pis & Cofins e CFOP padrão preenchidos e destacados](../imagens/03.08/03-grupos.png){ loading=lazy }

!!! tip "Tem várias lojas com as mesmas regras?"
    No topo de **Configurações fiscais** fica **Definir grupos fiscais para todas as unidades**. Ligue a chave ao lado do campo (por exemplo, ICMS) e escolha o grupo uma vez só: ele vale para todas as lojas. Desligue a chave quando uma loja precisar de um grupo diferente, por exemplo, uma loja em outro estado.

## Se o grupo ainda não existe, crie

Os **grupos** guardam as regras de um imposto. Você cria o grupo uma vez e usa em vários produtos.

1. Clique na caixa do imposto (por exemplo, **ICMS**). No topo da lista, clique em **+ Criar novo ICMS**.

    ![Lista de grupos de ICMS aberta com a opção Criar novo ICMS destacada](../imagens/03.08/04-criar-grupo.png){ loading=lazy }

2. Em **Nome**, use um nome fácil de reconhecer, que diga a regra. Exemplo: "Simples Nacional - 102" ou "Bebidas com ST - 500".
3. Em **Situação do ICMS**, escolha o código que o contador indicou.

    ![Formulário Novo grupo do ICMS com os campos Nome e Situação do ICMS destacados](../imagens/03.08/05-novo-grupo.png){ loading=lazy }

    ![Lista da Situação do ICMS aberta com os códigos do Simples Nacional](../imagens/03.08/06-situacao-icms.png){ loading=lazy }

4. As **alíquotas por estado** (ICMS interestadual, ICMS padrão, FCP e ICMS ST) já vêm preenchidas. **Só altere com orientação do contador.**
5. Clique em **Salvar**. O grupo novo passa a aparecer na lista do produto.

O mesmo vale para **Pis & Cofins** e **IPI**: clique na caixa e use a opção **+ Criar novo**, no topo da lista.

## Clique em "Salvar"

Depois de preencher tudo, clique no botão verde **Salvar**, no canto de baixo, à direita.

</div>

!!! success "Como saber que deu certo"
    Volte para **Produtos → Parâmetros fiscais**. O produto passa a mostrar **Definido** nas colunas que você preencheu. Faça uma venda de teste com nota e confira se ela é autorizada.

## Configurar vários produtos de uma vez

Se vários produtos usam os mesmos códigos (por exemplo, todos os refrigerantes), não precisa abrir um por um:

1. Na lista de **Parâmetros fiscais**, marque a caixinha do lado esquerdo de cada produto.
2. No rodapé, clique em **Edição em lote**.
3. Em **Informações fiscais**, clique em **Adicionar campo**, escolha o campo (por exemplo, **NCM**) e o valor.
4. Em **Configuração fiscal**, clique em **Adicionar campo**, escolha o grupo (por exemplo, **ICMS**) e a opção.
5. Clique em **Salvar**. Todos os produtos marcados recebem os mesmos dados.

![Edição em lote com a lista de grupos fiscais aberta: CFOP, Cód. de Benef. Fiscal na UF, CST do IBS/CBS, ICMS, IPI e PIS & COFINS](../imagens/03.08/07-lote.png){ loading=lazy }

## Deu algum problema?

??? question "A nota foi recusada por causa do NCM"
    O NCM precisa ter 8 números e existir na tabela oficial. Confira o código com o contador, corrija no produto e emita a nota de novo.

??? question "A lista de grupos (ICMS, Pis & Cofins) está vazia"
    Ainda não existe nenhum grupo para a sua loja. Crie o grupo pela opção **+ Criar novo**, no topo da lista, como no passo 5, com os dados que o contador passou.

??? question "Salvei, mas o produto continua \"Pendente\""
    Confira se você preencheu a seção da **loja certa**. Cada loja tem a própria seção em **Configurações fiscais**. Confira também se escolheu um grupo em cada imposto que aparece como Pendente.

??? question "Tenho lojas em estados diferentes"
    As regras podem mudar de um estado para outro. Desligue a opção **Definir grupos fiscais para todas as unidades** para esse imposto e escolha o grupo certo na seção de cada loja.

??? question "Não sei qual código usar"
    Quem define é o contador da sua empresa. O suporte da CPlug ajuda a encontrar **onde** preencher no sistema, mas não define a tributação dos produtos.

**Relacionados:** [Como cadastrar um produto](cadastrar-produto.md) · [Como cadastrar um cliente](../clientes/cadastrar-cliente.md)

<span class="palavras-chave">fiscal tributação imposto ncm cest cfop cst csosn icms pis cofins ipi origem nota fiscal nfc-e nf-e rejeição recusada sefaz parâmetros fiscais grupo fiscal ibs cbs reforma tributária substituição tributária st</span>
