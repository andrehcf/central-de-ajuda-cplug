---
title: Como cadastrar formas de pagamento
description: Veja as formas de pagamento que já vêm no sistema e crie novas, com o código certo do meio de pagamento na nota fiscal.
codigo: "07.03"
modulo: Finanças
tela: /dashboard/payments
atualizado: 2026-10-30
---

# Como cadastrar formas de pagamento

<div class="cplug-meta" markdown>:material-clock-outline: 3 minutos · :material-format-list-numbered: 4 passos · :material-calendar-check: Atualizado em 30/10/2026</div>

As **formas de pagamento** são as opções que o cliente usa para pagar: dinheiro, Pix, cartão, vale-refeição... O sistema **já vem com as mais comuns**. Só crie uma nova se precisar de uma opção que não está na lista.

!!! warning "A forma de pagamento vai para a nota fiscal"
    Toda forma de pagamento tem um **código** que sai na nota fiscal (NFC-e e NF-e) e informa à Sefaz **como o cliente pagou**. Escolha sempre o código que corresponde ao pagamento de verdade. Exemplo: uma forma "Pix na maquininha" usa o código **17 - Pix**, e não **01 - Dinheiro**.

Nos prints, o **quadrado vermelho** mostra onde você deve clicar ou digitar.

<div class="passos" markdown>

## Veja as formas que já existem

No menu do lado esquerdo, clique em **Configurações** e depois em **Formas de pagamento**.

A lista mostra as formas que já vêm prontas: **PIX, Dinheiro, Boleto, Cheque, Faturamento, Depósito, Pagseguro, Débito em Conta, Vale Alimentação, Vale Refeição, Vale Presente, Crédito em Loja, Cartão de Crédito, Pontos de Fidelidade** e **Cartão de Débito**.

Se a forma que você precisa já está na lista, não precisa criar nada.

![Tela Pagamentos com a lista de formas padrão e o botão Nova forma de pagamento destacados](../imagens/07.03/01-lista.png){ loading=lazy }

## Crie uma nova forma

Clique em **Nova forma de pagamento**, no canto de cima, à direita, e preencha:

- **Nome:** como a forma vai aparecer no caixa. Exemplo: "Pix na maquininha". Até 40 letras.
- **Código do método de pagamento na nota fiscal:** o tipo de pagamento que vai na nota. Veja a tabela abaixo.
- **Permissão de parcelamento:** **Permitir** se o cliente pode dividir o pagamento em parcelas (como no cartão de crédito). **Não permitir** para pagamentos à vista, como Pix e dinheiro.

![Formulário Nova forma de pagamento com Nome, Código na nota fiscal, Permissão de parcelamento e Salvar destacados](../imagens/07.03/02-nova.png){ loading=lazy }

## Escolha o código da nota fiscal

Clique no campo **Código do método de pagamento na nota fiscal** e escolha o código. Para achar mais rápido, digite o número.

![Lista de códigos do método de pagamento na nota fiscal aberta](../imagens/07.03/03-codigos.png){ loading=lazy }

Os códigos mais usados:

| Código | Use para |
| --- | --- |
| **01 - Dinheiro** | Dinheiro em espécie. |
| **03 - Cartão De Crédito** | Cartão de crédito, na maquininha ou no TEF. |
| **04 - Cartão De Débito** | Cartão de débito. |
| **05 - Crédito Em Loja** | Crédito que o cliente tem na sua loja. |
| **10 - Vale Alimentação** / **11 - Vale Refeição** | Vales e tíquetes de alimentação e refeição. |
| **12 - Vale Presente** | Vale-presente e gift card. |
| **15 - Boleto** | Boleto bancário. |
| **17 - Pix** | Pix com QR Code gerado na hora (maquininha ou sistema). |
| **20 - Pix Estático** | Pix por QR Code fixo ou chave Pix, sem valor gerado na hora. |
| **99 - Outros** | Só quando **nenhum** outro código serve. |

!!! tip "Na dúvida sobre o código, pergunte ao contador"
    O código errado pode fazer a nota ser recusada ou ficar com a informação de pagamento incorreta.

## Salve e confira

Clique em **Salvar**. Aparece a mensagem **Método de pagamento adicionado com sucesso**.

Role a tela até o fim: a nova forma aparece em **Formas de pagamentos criadas por você**. Os **três pontinhos** ao lado dela abrem as opções da forma.

![Fim da lista com a nova forma em Formas de pagamentos criadas por você destacada](../imagens/07.03/04-criada.png){ loading=lazy }

</div>

!!! info "Bandeiras e taxas dos cartões"
    As bandeiras aceitas (Visa, Mastercard...) e as taxas cobradas pela maquininha são cadastradas em **Finanças → Contrato de cartões e outros**. Esse manual está a caminho.

## Deu algum problema?

??? question "Não consigo alterar uma forma padrão (PIX, Dinheiro...)"
    As formas que já vêm no sistema aparecem só para consulta nesta tela. As formas criadas por você podem ser alteradas pelos três pontinhos.

??? question "A nota saiu com a forma de pagamento errada"
    Confira o **código na nota fiscal** da forma usada na venda. Se estiver errado, altere a forma criada por você pelos três pontinhos, para as próximas vendas.

**Relacionados:** [Como cadastrar uma conta bancária](conta-bancaria.md) · [Como configurar a emissão de notas fiscais](../configuracoes/emissao-de-notas.md)

<span class="palavras-chave">forma de pagamento meio de pagamento pix dinheiro cartão de crédito cartão de débito boleto vale refeição vale alimentação parcelamento parcelas código tpag nota fiscal nfc-e nf-e sefaz nova forma maquininha pix estático outros</span>
