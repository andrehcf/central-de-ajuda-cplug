---
title: Como importar produtos de uma planilha
description: Cadastre muitos produtos de uma vez usando a planilha modelo do sistema, com preço, categoria, estoque inicial e dados fiscais.
codigo: "03.09"
modulo: Produtos
tela: /dashboard/catalog/products
atualizado: 2026-10-30
---

# Como importar produtos de uma planilha

<div class="cplug-meta" markdown>:material-clock-outline: 10 minutos · :material-format-list-numbered: 7 passos · :material-calendar-check: Atualizado em 30/10/2026</div>

Tem muitos produtos para cadastrar? Em vez de criar um por um, preencha a **planilha modelo** do sistema e envie tudo de uma vez. Cada linha da planilha vira um produto.

!!! info "Antes de começar"
    - As **categorias** e as **unidades de medida** que você vai usar na planilha precisam **já estar cadastradas**. Veja [Como cadastrar uma categoria](cadastrar-categoria.md) e [Como cadastrar uma unidade de medida](cadastrar-unidade-de-medida.md).
    - Você vai precisar de um programa de planilhas, como o **Excel** ou o **Google Planilhas**.
    - Os dados fiscais (NCM, origem, CFOP) quem informa é o **contador**.

Nos prints, o **quadrado vermelho** mostra onde você deve clicar ou digitar.

<div class="passos" markdown>

## Abra a importação de produtos

No menu do lado esquerdo, clique em **Produtos** e depois em **Produtos**. No canto de cima, à direita, clique em **Importar** e depois em **Importar produtos**.

![Lista de produtos com o botão Importar e a opção Importar produtos destacados](../imagens/03.09/01-menu.png){ loading=lazy }

## Baixe a planilha modelo

Abre o painel **Importar planilhas**. Clique na **setinha para baixo**, ao lado de **Planilha Modelo - Produtos**, para baixar o arquivo.

![Painel Importar planilhas com o botão de baixar a planilha modelo e a área de envio destacados](../imagens/03.09/02-modelo.png){ loading=lazy }

A planilha aceita até **10.000 linhas** (ou 5 MB) e precisa ser do tipo **XLSX**, o formato do Excel.

## Preencha a planilha

Abra o arquivo baixado. A **primeira linha** tem os nomes das colunas: **não apague nem mude essa linha**. Preencha um produto por linha, a partir da linha 2.

Exemplo com três produtos (mostrando só as colunas mais usadas):

| Nome | Código | Categoria | Estoque inicial | Valor de custo | Valor de venda | Unidade de Medida | Perecível | Código NCM | Código de Origem | CFOP Padrão |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Chá Gelado Lata | CHA-LATA | Bebidas | 24 | 2,80 | 7,00 | Unidade | Não | 22029900 | 0 | 5102 |
| Cookie de Chocolate | COOKIE | Sobremesas | 30 | 1,50 | 6,50 | Unidade | Sim | 19053100 | 0 | 5102 |
| Água com Gás | AGUA-GAS | Bebidas | 24 | 1,10 | 4,50 | Unidade | Não | 22011000 | 0 | 5102 |

O que vai em cada coluna:

- **Nome:** o nome do produto, como vai aparecer na venda.
- **Código:** um código curto e **diferente para cada produto**. Exemplo: CHA-LATA.
- **Categoria** e **Unidade de Medida:** escreva **igual** ao nome cadastrado no sistema. Exemplo: Bebidas, Unidade.
- **Estoque inicial:** quantas unidades você tem hoje. O sistema já lança essa entrada no estoque.
- **Valor de custo** e **Valor de venda:** quanto você paga e por quanto vende.
- **Tipo Insumo**, **Custo com valor fixo** e **Perecível:** responda **Sim** ou **Não**.
- **Código NCM**, **Código de Origem** e **CFOP Padrão:** os dados fiscais. **0** na origem quer dizer produto nacional. Confirme os códigos com o contador.

As outras colunas (código de barras, CEST, pesos, grupos de impostos, fornecedor, estoque mínimo e máximo...) são opcionais. **Deixe em branco o que você não souber.**

## Deixe a planilha com uma aba só

!!! warning "Importante: apague as abas extras"
    A planilha modelo vem com **três abas** embaixo: **Planilha1**, **Planilha2** e **Planilha3**. O sistema **só aceita arquivo com uma aba**.

    Antes de salvar, clique com o botão direito em **Planilha2** e escolha **Excluir**. Faça o mesmo com a **Planilha3**. Fica só a **Planilha1**, com os seus produtos.

Salve o arquivo no formato **XLSX** (no Excel, "Pasta de Trabalho do Excel"). No Google Planilhas, use **Arquivo → Fazer download → Microsoft Excel (.xlsx)**.

## Envie a planilha

Volte ao painel **Importar planilhas** e clique em **Escolha os arquivos** (ou arraste o arquivo para essa área). O nome do arquivo aparece no painel. Clique em **Importar**.

![Painel com o arquivo produtos_treinamento.xlsx anexado e o botão Importar destacados](../imagens/03.09/03-arquivo.png){ loading=lazy }

Aparece **Importação em andamento: Aguarde, estamos validando a planilha**. Isso pode levar **cerca de um minuto**. Você pode continuar usando o sistema enquanto isso.

## Revise e confirme

Quando a conferência termina, aparece **Revisar importação**, com quantos produtos foram encontrados e quantos estão certos. No exemplo: **Foram encontrados 3 registros, dos quais 3 são válidos. Planilha sem erros**.

Clique em **Prosseguir com a importação**.

![Tela Revisar importação com a mensagem de planilha sem erros e o botão Prosseguir com a importação destacados](../imagens/03.09/04-revisar.png){ loading=lazy }

Se alguma linha tiver erro, o sistema avisa e mostra o botão **Importar apenas itens válidos**: ele importa as linhas certas e deixa as erradas de fora. Corrija as linhas erradas e importe de novo depois.

## Confira os produtos

No topo da lista aparece **Importando produtos** e, quando termina, **Importação concluída**. Os produtos novos aparecem na lista com categoria, preço e estoque.

Dica: para ver os mais novos primeiro, clique no botão de **ordenar** (as duas setas, à direita da busca) e escolha **Data de criação** e **Decrescente**.

![Lista de produtos com o aviso Importação concluída e os três produtos importados destacados](../imagens/03.09/05-concluida.png){ loading=lazy }

</div>

Pronto! Abra um dos produtos para conferir os dados. Se precisar, complete o cadastro (foto, variações, adicionais) pela tela do produto.

## Deu algum problema?

??? question "Apareceu \"O arquivo contém mais de uma planilha\""
    A planilha tem mais de uma aba. Clique em **Abandonar** e confirme. Depois apague as abas **Planilha2** e **Planilha3**, salve e envie de novo (veja o passo **Deixe a planilha com uma aba só**).

    ![Tela Revisar importação com a mensagem O arquivo contém mais de uma planilha destacada](../imagens/03.09/06-erro-abas.png){ loading=lazy }

??? question "Diz que já existe uma importação em andamento"
    O sistema faz uma importação por vez. Espere a atual terminar. Se ela travou ou você desistiu, abra **Importar → Importar produtos** e clique em **Abandonar**.

??? question "Algumas linhas ficaram com erro"
    Confira se a **Categoria** e a **Unidade de Medida** estão escritas igual ao cadastro, se o **Código** não se repete e se os valores são números. Corrija e importe só essas linhas de novo.

??? question "Preciso mudar o preço de muitos produtos de uma vez"
    Para isso existe a opção **Importar → Editar produtos**, que altera produtos que já existem. Não use a **Importar produtos** para isso: ela cria produtos novos.

**Relacionados:** [Como cadastrar um produto](cadastrar-produto.md) · [Como configurar os dados fiscais de um produto](parametros-fiscais.md) · [Como dar entrada no estoque](../estoque/entrada-de-estoque.md)

<span class="palavras-chave">importar produtos planilha excel xlsx importação em massa em lote cadastrar vários produtos de uma vez planilha modelo modelo de importação subir planilha upload estoque inicial ncm cfop código de origem abas mais de uma planilha erro importar apenas itens válidos</span>
