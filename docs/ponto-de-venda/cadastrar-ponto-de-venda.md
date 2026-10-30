---
title: Como cadastrar um ponto de venda
description: Crie um ponto de venda (PDV) para cada caixa da loja, com nome, impressora, balança e status.
codigo: "06.04"
modulo: Ponto de venda
tela: /dashboard/fisical-operations/points-of-sale
atualizado: 2026-10-30
---

# Como cadastrar um ponto de venda

<div class="cplug-meta" markdown>:material-clock-outline: 3 minutos · :material-format-list-numbered: 4 passos · :material-calendar-check: Atualizado em 30/10/2026</div>

O **ponto de venda (PDV)** é cada caixa da loja, o lugar onde as vendas são registradas. Se a loja tem um caixa no balcão e outro no salão, cadastre um PDV para cada um. Exemplo: "Caixa Balcão" e "Caixa Salão".

Com um PDV para cada caixa, você sabe de onde saiu cada venda e confere o fechamento de cada um separado.

!!! info "Antes de começar"
    A loja já vem com um ponto de venda cadastrado. Confira a lista antes de criar outro: talvez você só precise trocar o nome dele.

    Se o caixa vai imprimir pedidos ou usar balança, cadastre antes esses aparelhos em **Configurações** → **Periféricos**. Só os aparelhos cadastrados lá aparecem como opção no cadastro do PDV.

Nos prints, o **quadrado vermelho** mostra onde você deve clicar ou digitar.

<div class="passos" markdown>

## Abra a tela de pontos de venda

No menu do lado esquerdo, clique em **Ponto de venda** e depois em **Cadastros**. A lista mostra cada PDV com a impressora, a balança e o status.

Clique em **Novo PDV**, no canto de cima, à direita.

![Menu Ponto de venda com Cadastros destacado e o botão Novo PDV destacado no canto de cima](../imagens/06.04/01-lista.png){ loading=lazy }

## Preencha os dados do PDV

Abre a janela **Novo PDV**:

- **Nome:** um nome fácil de reconhecer no dia a dia. Exemplo: "Caixa Balcão".
- **Ponto de Impressão:** a impressora em que esse caixa imprime. A lista mostra as impressoras de **Configurações** → **Periféricos**. Se aparecer "Nenhum resultado encontrado", ainda não há impressora cadastrada. Pode deixar em branco e escolher depois.
- **Balança:** a balança ligada a esse caixa, se houver. Também vem de **Periféricos**. Pode deixar em branco.
- **Aplicativo Offline:** só preencha se o caixa vai usar o **PDV 2.0** ou o **PDV Móvel**. A lista mostra os computadores servidores cadastrados em **Dispositivos** → **Terminais & Dispositivos** (por exemplo, **Servidor Padrão**). Ao escolher um, o PDV só pode ser aberto nesse aplicativo. Se não usa esses aplicativos, deixe em branco.
- **Status:** deixe em **Ativo** para o caixa poder ser usado.

![Janela Novo PDV com o campo Nome preenchido com Caixa Balcão e o botão Salvar destacados](../imagens/06.04/02-form.png){ loading=lazy }

## Salve o PDV

Clique em **Salvar**. Aparece a mensagem **PDV criado com sucesso**, e o novo caixa entra na lista com o status **Ativo**.

O sistema também cria sozinho uma conta com o mesmo nome do PDV em **Finanças** → **Contas bancárias**, do tipo **Conta PDV** e com saldo R$ 0,00. Exemplo: a conta "Caixa Balcão". Ela aparece, por exemplo, na lista de contas da transferência automática do fechamento de caixa.

![Mensagem PDV criado com sucesso e a linha do Caixa Balcão na lista destacadas](../imagens/06.04/03-criado.png){ loading=lazy }

## Conheça as opções do PDV

Nos **três pontinhos** no fim da linha do PDV você tem:

- **Marcar como inativo:** o sistema pergunta "Deseja alterar o status para inativo?". Clique em **OK**. Aparece **Status alterado com sucesso**, e o PDV fica **Inativo** na lista, sem apagar o cadastro. Para voltar, use **Marcar como ativo** no mesmo menu.
- **Editar:** abre a janela **Editar PDV**, com os mesmos campos do cadastro: nome, impressora, balança, aplicativo offline e status.
- **Excluir:** apaga o PDV.

![Menu dos três pontinhos aberto com Marcar como inativo, Editar e Excluir destacados](../imagens/06.04/04-acoes.png){ loading=lazy }

![PDV Caixa Balcão inativo, com a mensagem Status alterado com sucesso e a opção Marcar como ativo destacadas](../imagens/06.04/05-inativo.png){ loading=lazy }

</div>

Pronto! O novo ponto de venda já aparece na lista de pontos de venda.

## Deu algum problema?

??? question "A lista de Ponto de Impressão está vazia"
    Nenhuma impressora foi cadastrada ainda. Salve o PDV sem impressora. Depois de cadastrar a impressora em **Configurações** → **Periféricos**, abra o PDV pelos três pontinhos, clique em **Editar** e escolha a impressora.

??? question "Não sei o que escolher em Aplicativo Offline"
    Se o caixa não usa o PDV 2.0 nem o PDV Móvel, deixe em branco. Se usa, escolha o computador servidor da loja. Na dúvida, fale com o suporte.

??? question "Prefiro desativar o caixa em vez de excluir"
    Use **Marcar como inativo**. O PDV continua cadastrado e pode ser reativado com **Marcar como ativo**.

??? question "Apareceu uma conta nova em Contas bancárias"
    É normal: cada PDV ganha uma conta com o mesmo nome, do tipo **Conta PDV**.

**Relacionados:** [Como configurar o terminal de vendas](configurar-terminal.md) · [Como cadastrar uma conta bancária](../financas/conta-bancaria.md) · [Como escolher o tipo de nota emitida no PDV](../configuracoes/tipo-de-nota-no-pdv.md)

<span class="palavras-chave">ponto de venda pdv caixa novo pdv cadastrar caixa caixa balcão impressora ponto de impressão balança periféricos aplicativo offline pdv 2.0 pdv móvel servidor padrão computador servidor conta pdv ativo inativo marcar como ativo editar excluir</span>
