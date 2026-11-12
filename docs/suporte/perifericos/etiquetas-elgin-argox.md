---
title: Configuração e problemas de etiquetas (Elgin e Argox)
description: Criar o modelo de etiqueta das etiquetadoras Elgin e Argox e resolver etiqueta pulando, colunas erradas e código de barras que não sai.
codigo: "PER-008"
modulo: Suporte técnico
tela: /dashboard/settings/label-models
atualizado: 2026-11-12
---

# Configuração e problemas de etiquetas (Elgin e Argox)

<div class="cplug-meta" markdown>:material-cog-outline: Configuração · :material-tag-outline: vale para ERP Legado e ERP 2.0 · Periféricos · Etiquetas · :material-calendar-check: Atualizado em 12/11/2026</div>

**Objetivo:** montar o modelo de etiqueta certo para cada etiquetadora e resolver os problemas mais comuns de impressão de etiquetas de produto.

!!! info "Onde fica"
    - **ERP 2.0:** **Configurações > Modelos de etiqueta**.
    - **ERP Legado:** **Configurações gerais > Modelos de etiquetas**.

    É a mesma tela nas duas versões, com os botões **Novo Modelo PDF**, **Novo Modelo ArgoX**, **Novo Modelo Elgin** e **Imprimir Etiquetas**.

## Etiquetadoras homologadas

| Etiquetadora | Modelo no sistema | Ribbon |
| --- | --- | --- |
| Elgin L42 DT | **Novo Modelo Elgin** (BPLB) | Não usa |
| Elgin L42 Pro e L42 Pro Full | **Novo Modelo Elgin** (BPLB) | Depende do papel |
| Argox OS214 plus | **Novo Modelo ArgoX** (PPLA) | Depende do papel |

Com **papel térmico**, a impressora trabalha em térmica direta e não precisa de ribbon. Com outro tipo de papel, o ribbon é obrigatório.

**Etiquetadora fora da lista:** dá para tentar, sem garantia de funcionamento, usando o **Novo Modelo Elgin**. Se não funcionar, indique um dos modelos homologados.

## Campos do modelo Elgin (BPLB)

1. **Dados do Modelo:** **Nome** e **Código**.
2. **Folha > Largura (mm):** a largura de **todo o papel** (o liner com todas as colunas), não a de uma etiqueta.
3. **Colunas da Folha:**
    - **Número de Colunas:** quantas etiquetas lado a lado.
    - **Espaçamento entre colunas (mm):** distância horizontal entre as etiquetas.
    - **Espaçamento entre linhas (mm):** o espaço vertical (GAP) entre uma linha de etiquetas e a seguinte.
4. **Etiqueta - Dimensões:** **Largura** e **Altura** de **uma** etiqueta e as margens internas: **Espaçamento superior**, **inferior**, **da esquerda** e **da direita** (mm).
5. **Seções da Etiqueta (opcional):** divide a etiqueta em partes (**Largura** e **Espaçamento da esquerda**). Use **Adicionar nova Seção** se precisar.
6. **Informações na Etiqueta:** cada linha é um elemento. Em **Campo**, escolha entre **Nome da Empresa**, **Código do Produto**, **Nome do Produto**, **Código + Nome do Produto**, **Categoria do Produto**, **Valor do Produto**, **Código de barras** e **Texto personalizado**. Use **Adicionar nova linha** para cada elemento e clique em **Salvar**.

Para a linha de **Código de barras**:

- **Tipo de Código:** **C39**, **C128**, **EAN8** ou **EAN13**.
- **Largura da barra grossa** e **Largura da barra fina:** a espessura das barras.
- **Exibe o Código?:** mostra o número embaixo das barras.
- **Altura (mm):** a altura das barras.

Para as linhas de texto: **Tipo da Fonte**, **Tamanho da fonte**, **Posição de quebra de texto**, **Espaçamento entre linhas (mm)**, **Espaçamento inferior (mm)** e **Espaçamento da esquerda (mm)**. Depois de criar seções, cada linha ganha o campo **Seção**.

## O que muda no modelo Argox (PPLA)

- **Não tem largura da folha:** só a largura da etiqueta.
- **Colunas da Folha** tem só **Número de Colunas** e **Espaçamento entre colunas**, sem espaçamento entre linhas.
- Tem **Configurações da Impressora > Recuo da etiqueta (mm)**.
- Em **Etiqueta - Dimensões**, tem **Orientação**: **Horizontal** ou **Vertical**.
- Em **Campo**, tem também **QR-Code**, com **Tamanho do QR-Code (mm)**.

## Exemplo: etiqueta de 32 × 21 mm com 3 colunas (Elgin)

Meça a etiqueta real antes de configurar. Uma referência que funciona:

| Campo | Valor |
| --- | --- |
| Folha > Largura | 110 mm (ou 105 mm, conforme o liner) |
| Número de Colunas | 3 |
| Espaçamento entre colunas | 2 mm |
| Espaçamento entre linhas | 2 mm |
| Etiqueta > Largura × Altura | 32 × 21 mm |
| Espaçamento superior | 0 a 2 mm |
| Espaçamento da esquerda e da direita | 1 a 2 mm |
| Código de barras | C128, barra grossa **2**, barra fina **1**, altura 5 a 8 mm |

Em etiquetas pequenas, use **barra grossa 2 e fina 1**: barras mais largas fazem o código invadir a etiqueta do lado. Faça um teste de impressão depois de cada ajuste.

## Imprimir as etiquetas

Na tela de modelos, clique em **Imprimir Etiquetas**:

1. Em **Modelo**, escolha o modelo criado.
2. Em **Começar na posição da etiqueta**, escolha a posição (útil para aproveitar folha já usada).
3. Escolha o **Ponto de Impressão** e a **Lista de Preços**.
4. Em **Produtos**, informe o produto e a **Quantidade**. **Adicionar mais produtos** inclui outros.
5. Clique em **Imprimir Etiquetas** ou em **Download do PDF**.

## Problemas comuns

### A impressão está pulando etiquetas

1. Confira se a **Altura** da etiqueta no modelo não é maior que a altura real.
2. Peça ao cliente um **vídeo da calibração**. É comum o cliente dizer que calibrou, mas o papel parar fora do sensor ou a impressora não reagir. A calibração tem de se comportar exatamente como nos vídeos:
    - Elgin L42 DT: [Calibrar etiqueta na impressora Elgin](https://www.youtube.com/watch?v=G0vY__Kb-GQ)
    - Elgin L42 Pro e Pro Full: [Como calibrar o rolo de etiqueta na Elgin L42 Pro Full](https://www.youtube.com/watch?v=nquKkM5IqNY)
    - Argox OS214 plus: [Calibração OS214plus](https://www.youtube.com/watch?v=7tQbtTVJe6Q)

    Se o comportamento for diferente, a calibração não foi feita certo ou a impressora tem um problema físico.

### Problemas físicos que afetam a impressão

- Impressora sem etiqueta.
- Etiqueta mal encaixada ou colocada ao contrário.
- Impressora sem ribbon, quando o papel não é térmico.

### Etiqueta de 2 ou 3 colunas imprime só em 1 coluna

1. Confira se o **Número de Colunas** do modelo é igual ao real.
2. No modelo **Elgin**, confira a **Largura da folha** e a **Largura** da etiqueta. Com mais de uma coluna, elas são diferentes: numa etiqueta de 3 colunas, a folha tem cerca de **105 mm** e cada etiqueta, **33 mm**. Só com 1 coluna as duas larguras ficam iguais ou próximas.
3. No modelo **Argox** não existe largura da folha: confira a largura da etiqueta e o espaçamento entre colunas.

Se tudo estiver certo e a falha continuar, o problema está no ribbon ou na impressora. Nesses casos, costuma dar para ver falhas no próprio impresso.

### O código de barras sai cortado no topo ou desalinhado

- Reduza o **Espaçamento superior** da etiqueta (ex.: de 4 para 1 ou 0 mm): margem alta empurra o conteúdo para baixo.
- Reduza a **Altura** do código de barras (ex.: de 8 para 6 mm) em etiquetas baixas, como as de 21 mm.
- Ajuste o **Espaçamento da esquerda** (1 a 2 mm).

### O código de barras não sai na impressão

1. Confira se o produto tem **código de barras** no cadastro. Em produto com variação, o código precisa estar **na variação**.
2. Confira se o **Tipo de Código** do modelo bate com o código do produto (normalmente **EAN13** ou **EAN8**).
3. Se o cliente usa códigos fora do padrão EAN, use **C128** no modelo: ele aceita a maioria dos formatos.

### Precisa mudar o firmware da etiquetadora

Não alteramos firmware nem configurações internas da impressora. Oriente o cliente a falar com o fabricante.

**Relacionados:** [Impressora USB no ERP 2.0](impressora-usb-erp2.md) · [Impressora não imprime a página de teste do Windows](impressora-sem-pagina-de-teste.md) · [Como cadastrar um produto com variações](../../produtos/cadastrar-produto-com-variacoes.md)

<span class="palavras-chave">etiqueta etiquetas etiquetadora modelo de etiqueta elgin l42 dt l42 pro full bplb argox os214 plus ppla ribbon papel térmico calibração calibrar sensor gap pulando etiqueta pula etiqueta colunas largura da folha código de barras ean13 ean8 c128 c39 qr-code imprimir etiquetas barra grossa barra fina firmware</span>
