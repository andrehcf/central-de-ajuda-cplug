---
title: Como configurar o terminal de vendas
description: Escolha como o caixa funciona no dia a dia, da venda no balcão ao delivery e ao atendimento de mesas e comandas.
codigo: "06.06"
modulo: Ponto de venda
tela: /dashboard/fisical-operations/terminal/general
atualizado: 2026-10-30
---

# Como configurar o terminal de vendas

<div class="cplug-meta" markdown>:material-clock-outline: 15 minutos · :material-format-list-numbered: 10 passos · :material-calendar-check: Atualizado em 30/10/2026</div>

As **configurações do PDV** decidem como o caixa funciona no dia a dia. Por exemplo: se o operador pode mudar o preço de um produto na hora da venda, se a loja cobra 10% de taxa de serviço ou se o caixa precisa de aprovação para ser fechado.

As opções ficam em duas telas: **Geral**, com as regras de venda, segurança, fechamento de caixa e cliente, e **Modos de pedidos**, com o delivery e o atendimento de mesas e comandas.

!!! warning "Antes de começar"
    Essas opções mudam o funcionamento do caixa. Mude uma coisa de cada vez. Na dúvida sobre uma opção, deixe como está e fale com o suporte.

!!! info "Como salvar"
    Ao mudar qualquer opção, aparece no rodapé a mensagem **Você tem alterações não salvas**, com os botões **Descartar alterações** e **Salvar**. Clique em **Salvar** antes de sair da tela. Para desfazer o que mudou, clique em **Descartar alterações**.

Nos prints, o **quadrado vermelho** mostra onde você deve clicar ou digitar.

<div class="passos" markdown>

## Abra as configurações do PDV

No menu do lado esquerdo, clique em **Ponto de venda**, depois em **Configurações** e em **Geral**. A tela **Configurações do PDV** tem quatro abas: **Geral**, **Segurança**, **Fechamento de caixa** e **Cliente**.

Na aba **Geral**, o bloco **Venda** reúne as regras do dia a dia. Marque o que a loja precisa:

- **Permitir edição do preço de venda dos produtos:** o operador pode mudar o preço na hora da venda.
- **Permitir edição de quantidade de produtos na venda:** o operador pode mudar a quantidade do item.
- **Selecionar vendedor sempre que iniciar uma nova venda:** o PDV pede para escolher o vendedor a cada venda nova.
- **Permitir abrir comanda ao iniciar venda balcão.**
- **Exigir nome do cliente ao finalizar a venda.**
- **Exigir número de autorização da operação com cartão nas vendas:** o operador informa o número de autorização do pagamento com cartão.
- **Habilitar exibição de últimas vendas do cliente?**
- **Vincular cliente à venda atual ao adicionar o CPF na nota:** se o CPF já estiver cadastrado, o cliente entra na venda sozinho.
- **Permitir cancelamento de venda após tempo legal?:** a venda é cancelada no sistema, mas a nota fiscal continua válida na SEFAZ. Use com cuidado. Só funciona no PDV a partir da versão 2.11.15.
- **Numeração de venda aleatória.**
- **Limitar exibição de vendas no histórico do PDV:** quantas vendas aparecem no histórico do caixa (até 200).

![Menu Configurações com Geral destacado e as abas Geral, Segurança, Fechamento de caixa e Cliente destacadas](../imagens/06.06/01-geral.png){ loading=lazy }

## Configure a taxa de serviço e os outros blocos da aba Geral

Role a aba **Geral** para baixo:

- **Taxa de serviço:** marque **Habilitar taxa de serviço** e digite o percentual. O campo preenche da direita para a esquerda: para 10%, digite **1000** e confira se aparece **10,00**. Depois escolha se a taxa vale também para vendas no balcão e, no botão **Produtos**, quais produtos têm taxa.
- **Habilitar código de barras gerado por balança:** para produtos vendidos por peso com etiqueta da balança. O botão **Produtos** configura o código de cada produto.
- **Registros de caixa:** permite depósitos e retiradas (sangria) no caixa, avisa quando a retirada chega a um valor e imprime o comprovante da retirada ou do depósito.
- **Desconto:** liga os descontos no PDV e define o tipo (fixo, aberto para alteração, por categoria de cliente), o valor máximo e se o desconto é **Em %** ou **Em R$**.

Clique em **Salvar** no rodapé.

![Habilitar taxa de serviço marcado com 10,00 no campo de percentual e os botões Descartar alterações e Salvar destacados no rodapé](../imagens/06.06/05-barra-salvar.png){ loading=lazy }

## Proteja operações na aba Segurança

Clique na aba **Segurança**:

- **Solicitar senha de segurança para determinadas operações:** pede uma senha para algumas ações no caixa.
- **Abandono de Vendas:** grava no relatório as vendas abandonadas e, se quiser, exige o motivo.
- **Abertura de Gaveta Automatica:** escolha quando a gaveta do dinheiro abre sozinha. Por exemplo, ao finalizar uma venda em dinheiro ou na sangria. A última opção mostra um botão para abrir a gaveta na mão.

![Aba Segurança destacada, com as opções de senha, abandono de vendas e abertura de gaveta](../imagens/06.06/02-seguranca.png){ loading=lazy }

## Defina o fechamento de caixa

Clique na aba **Fechamento de caixa**:

- **Exigir aprovação para fechar o caixa:** o responsável revisa e confirma o fechamento.
- **Modelo de fechamento:** como os valores aparecem na conferência.
    - **Formato Simples:** só Dinheiro, Cartão de crédito, Cartão de débito, Voucher e Outros.
    - **Dinâmico por método de pagamento:** mostra as formas de pagamento usadas no caixa. Já vem marcado.
    - **Dinâmico por bandeira de cartão:** separa os cartões por bandeira.
- **Transferir valores automaticamente no fechamento:** o dinheiro do caixa vai para a conta escolhida ao fechar.
- **Segurança:** conferir os valores antes de confirmar, informar quem fechou o caixa, esconder os resultados do caixa e bloquear o fechamento se houver pedidos em aberto.

![Aba Fechamento de caixa destacada, com os três modelos de fechamento](../imagens/06.06/03-fechamento.png){ loading=lazy }

## Libere o crédito de clientes

Na aba **Cliente**, ligue **Permitir Crédito de clientes no Ponto de Venda** se a loja trabalha com crédito para os clientes.

![Aba Cliente destacada com a opção Permitir Crédito de clientes no Ponto de Venda](../imagens/06.06/04-cliente.png){ loading=lazy }

## Abra os modos de pedidos

No menu, em **Ponto de venda** → **Configurações**, clique em **Modos de pedidos**. A primeira parte é o **Delivery**.

Ligue **Configurações de delivery no Ponto de Venda** se a loja faz entregas. Depois marque o que precisar:

- **Exigir seleção de entregador:** ao mudar o pedido para "Saiu para entrega", o operador precisa escolher o entregador.
- **Preencher DDD automaticamente ao cadastrar cliente nos pedido delivery:** digite o DDD da cidade no campo ao lado.
- **Finalizar venda após a entrega.**
- **Habilitar observações para os clientes** e **Habilitar observações para Delivery antes de finalizar a venda.**
- **Numeração de venda separada para delivery.**
- **Impressão do pedido de integração delivery:** em **Selecionar**, escolha a impressora.

![Menu Modos de pedidos destacado e a chave Configurações de delivery no Ponto de Venda ligada](../imagens/06.06/06-modos-delivery.png){ loading=lazy }

## Escolha a taxa de entrega e os tempos

- **Taxa de Entrega:** escolha **Taxa por bairro**, com um valor para cada bairro, ou **Taxa fixa**, o mesmo valor para todos os pedidos. Na taxa fixa, digite o valor no campo **R$**. Exemplo: R$ 5,00.
- **Painel delivery:** quantos dias de pedidos aparecem no painel e o aviso de impressão dos pedidos agendados.
- **Limites de Tempo:** em quantos minutos a entrega deve começar e terminar, e em quantos minutos a venda de retirada deve ser finalizada. Servem para alertar atrasos.

![Opções Taxa por bairro e Taxa fixa e o campo de valor da taxa fixa destacados](../imagens/06.06/07-taxa-entrega.png){ loading=lazy }

## Organize os status do delivery

Em **Status de delivery** ficam as etapas do pedido: preparo, envio e entrega. As abas **Abertos**, **Fechados** e **Cancelados** separam os status de cada fase.

- Cada status tem **Nome**, **Tempo Limite** e **Status Padrão**.
- **Novo**, **Em preparo** e **Pronto** são do sistema: dá para mudar o nome e o tempo, mas não o status padrão.
- Para criar uma etapa, clique em **Novo status**. Exemplo: "Saiu para Entrega".
- As setas do lado esquerdo servem para mudar a ordem. O **x** do lado direito apaga o status; nos status do sistema ele fica cinza.

![Abas Abertos, Fechados e Cancelados e o botão Novo status destacados](../imagens/06.06/08-status-delivery.png){ loading=lazy }

## Configure o atendimento no estabelecimento

Mais abaixo fica **No estabelecimento**, para pedidos feitos e consumidos na loja.

Ligue **Ponto de Venda oferece atendimento de mesa e comandas** se a loja atende em mesas ou com comandas. Logo abaixo aparecem **Mesas**, **Comandas** e a **Taxa de serviço**. Em **Balança**, clique em **Selecionar** para escolher a balança.

![Chave de atendimento de mesa e comandas ligada, os botões Mesas e Comandas e a Taxa de serviço destacados](../imagens/06.06/09-estabelecimento.png){ loading=lazy }

## Ajuste as regras do atendimento

Em **Configurações de atendimento no Ponto de Venda**:

- **Tela padrão ao abrir um novo atendimento:** **Mesas** ou **Comanda**.
- **Modo de seleção do atendente/vendedor:** **Busca e listagem** ou **Teclado para digitar senha**.
- **Utilizar código de produto no atendimento?** e **Utilizar código de barras no atendimento?:** **Sim** ou **Não**.
- **Pedir código ao garçom:** **Sim** ou **Não**.
- **Obrigatório informar motivo de cancelamento de item na comanda:** **Sim** ou **Não**.
- Marque também, se precisar: exigir o cliente ao iniciar o atendimento, o status "Mesa aguardando liberação", o motivo para cancelar a comanda, imprimir produtos com valor zerado e **Imprimir resumo ao fechar conta**. Em **Ponto de impressão do resumo da conta**, clique em **Selecionar** e escolha a impressora.

Clique em **Salvar** no rodapé.

![Tela padrão ao abrir um novo atendimento e Imprimir resumo ao fechar conta destacados](../imagens/06.06/10-atendimento.png){ loading=lazy }

</div>

Pronto! Antes de sair, confira o rodapé: se a mensagem **Você tem alterações não salvas** ainda estiver lá, clique em **Salvar**.

## Deu algum problema?

??? question "Digitei 10 na taxa de serviço e apareceu 0,10"
    O campo preenche da direita para a esquerda. Apague e digite **1000** para ter **10,00**.

??? question "Mudei uma opção e quero voltar atrás"
    Se ainda não salvou, clique em **Descartar alterações** no rodapé. Se já salvou, desmarque a opção e clique em **Salvar** de novo.

??? question "A lista de impressoras está vazia"
    Nenhuma impressora foi cadastrada ainda. Cadastre a impressora em **Dispositivos** e volte a esta tela.

??? question "Não sei qual modelo de fechamento escolher"
    O **Dinâmico por método de pagamento** já vem marcado e mostra as formas de pagamento que o caixa usou. Na dúvida, mantenha esse.

**Relacionados:** [Como cadastrar um ponto de venda](cadastrar-ponto-de-venda.md) · [Como escolher o tipo de nota emitida no PDV](../configuracoes/tipo-de-nota-no-pdv.md) · [Como cadastrar formas de pagamento](../financas/formas-de-pagamento.md)

<span class="palavras-chave">configurações do pdv terminal de vendas caixa taxa de serviço 10% garçom gorjeta desconto sangria retirada depósito gaveta senha abandono de venda fechamento de caixa crédito de cliente delivery entrega taxa de entrega taxa por bairro taxa fixa entregador status do pedido mesas comandas atendimento balança código de barras</span>
