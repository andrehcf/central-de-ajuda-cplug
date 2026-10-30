---
title: Como cadastrar um produto
description: Passo a passo para cadastrar um produto simples, com nome, categoria, preço e unidade de medida.
codigo: "03.04"
modulo: Produtos
tela: /dashboard/catalog/products/new
atualizado: 2026-10-29
---

# Como cadastrar um produto

<div class="cplug-meta" markdown>:material-clock-outline: 3 minutos · :material-format-list-numbered: 5 passos · :material-calendar-check: Atualizado em 29/10/2026</div>

Este manual mostra como cadastrar um produto simples, como uma lata de refrigerante ou um pastel. Para produtos com tamanho, cor ou sabor, veja [Como cadastrar um produto com variações](cadastrar-produto-com-variacoes.md).

!!! info "Antes de começar, confira se já existe"
    1. **A categoria** do produto, por exemplo "Bebidas". Se não existir, veja [Como cadastrar uma categoria](cadastrar-categoria.md).
    2. **A unidade de medida**, por exemplo "Unidade" ou "Kilograma". O sistema já vem com as mais comuns. Se precisar de outra, veja [Como cadastrar uma unidade de medida](cadastrar-unidade-de-medida.md).

!!! warning "Vai vender com nota fiscal? O cadastro não termina aqui"
    Este manual cadastra o produto para **vender**. Para a **nota fiscal** sair (cupom NFC-e ou NF-e), o produto também precisa dos **dados fiscais**: NCM, origem, ICMS, PIS/COFINS e CFOP. Sem eles, a nota é recusada.

    Depois de salvar o produto, siga o manual [Como configurar os dados fiscais de um produto](parametros-fiscais.md).

Nos prints, o **quadrado vermelho** mostra onde você deve clicar ou digitar.

<div class="passos" markdown>

## Abra a tela de produtos

No menu do lado esquerdo, clique em **Produtos**. Depois clique em **Produtos** de novo, logo abaixo. No canto de cima, à direita, clique no botão azul **Novo produto**.

![Menu Produtos aberto e o botão Novo produto destacados](../imagens/03.04/01-menu.png){ loading=lazy }

## Escolha a categoria

Clique na caixa **Categoria**. Digite o começo do nome da categoria e clique nela quando aparecer.

Se a categoria ainda não existir, clique em **+ Criar nova categoria**, que aparece no topo da lista.

![Lista de categorias aberta, com a opção Criar nova categoria destacada](../imagens/03.04/02-categoria.png){ loading=lazy }

## Preencha os dados do produto

- **Nome:** o nome que vai aparecer na venda. Exemplo: Torta de Limão.
- **Preço:** digite só os números. Para R$ 12,90, digite 1290.
- **Unidade de medida:** clique e escolha como o produto é vendido. Exemplo: "Unidade" para uma lata, "Kilograma" para algo vendido por peso.

Deixe o **Tipo de produto** como "Simples". O **Código (SKU)** o sistema preenche sozinho.

![Formulário com Nome, Categoria, Preço, Unidade de medida e o botão Salvar destacados](../imagens/03.04/03-dados.png){ loading=lazy }

## Clique em "Salvar"

Clique no botão verde **Salvar**, no canto de baixo, à direita.

![Mensagem Produto cadastrado com sucesso destacada](../imagens/03.04/05-sucesso.png){ loading=lazy }

## Confira se deu certo

O sistema volta para a lista de produtos. Digite o nome do produto na caixa de busca, no topo, e aperte Enter. O produto aparece com a categoria e o preço.

![Busca de produtos mostrando o produto novo](../imagens/03.04/06-busca.png){ loading=lazy }

</div>

!!! success "Como saber que deu certo"
    Aparece a mensagem **Produto cadastrado com sucesso!** no canto de cima, e o produto já pode ser vendido no caixa.

    **Próximo passo:** [configure os dados fiscais](parametros-fiscais.md) para a nota fiscal sair sem erro.

## Deu algum problema?

??? question "Apareceu \"Erro ao criar o produto\""
    Olhe a caixa **Código (SKU)**. Se embaixo dela estiver escrito "O número máximo de caracteres foi excedido", o código ficou grande demais. Isso acontece quando o nome do produto é longo.

    Apague o que está na caixa e digite um código curto, com até 30 letras ou números. Exemplo: TORTA-LIMAO. Depois clique em **Salvar** de novo.

    ![Erro no campo Código (SKU) e a mensagem Erro ao criar o produto destacados](../imagens/03.04/04-erro-sku.png){ loading=lazy }

??? question "A categoria que eu quero não aparece"
    Na lista de categorias, clique em **+ Criar nova categoria**.

??? question "O produto aparece com \"0 em estoque\""
    É normal. A quantidade em estoque é lançada no menu **Estoque**, não nesta tela.

??? question "Errei tudo e quero desistir"
    Clique em **Descartar alterações**, ao lado do Salvar. Nada é gravado.

<span class="palavras-chave">sku código item mercadoria cardápio cadastrar novo produto preço</span>
