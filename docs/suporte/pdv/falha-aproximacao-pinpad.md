---
title: Falha na aproximação de cartão no PINPAD (SiTef)
description: O PINPAD não lê o cartão por aproximação ou dá erro de comunicação. Reset da pasta CliSiTef e do CPServer.
codigo: "PDV-001"
modulo: Suporte técnico
atualizado: 2026-11-12
---

# Falha na aproximação de cartão no PINPAD (SiTef)

<div class="cplug-meta" markdown>:material-alert-circle-outline: Erro · :material-cash-register: PDV · TEF · Periféricos · :material-tag-outline: PDV desktop · versão do ERP não confirmada · :material-calendar-check: Atualizado em 12/11/2026</div>

**Sintoma:** ao pagar por aproximação no PDV, o PINPAD não lê o cartão ou mostra erro de comunicação.

**Causa:** arquivos de carga de tabelas ou temporários corrompidos na pasta local do SiTef. É preciso resetar a pasta e reiniciar o CPServer para forçar uma nova carga.

## Passo a passo

1. No computador do caixa, pressione **Windows + E** para abrir o Explorador de Arquivos.
2. Vá em **Este Computador** e abra o **Disco Local (C:)**.
3. Localize a pasta **CliSiTef** e renomeie para `CliSiTef.old`.
4. Abra o Gerenciador de Tarefas (**Ctrl + Shift + Esc**).
5. Na aba **Detalhes**, localize o processo do Java (`java.exe` ou `javaw.exe`), clique com o botão direito e selecione **Finalizar árvore de processos**.
6. Volte para a tela do PDV. O ícone do CPServer na barra superior fica vermelho, porque o Java foi finalizado.
7. Clique no ícone do CPServer para reiniciá-lo e aguarde até ele ficar verde.
8. Abra uma venda, inicie um pagamento em **Débito** ou **Crédito** e aguarde o PINPAD terminar a carga de registros.

## Resultado esperado

- A pasta **CliSiTef** é recriada automaticamente em `C:\`, limpa.
- Ao iniciar a transação, o PINPAD mostra a mensagem de atualização/carga de tabelas e volta a aceitar pagamentos por aproximação.

**Relacionados:** [Vinculação do Smart TEF ao PDV](vincular-smart-tef.md) · [Configuração e instalação do TEF (ERP 2.0)](../erp/tef-erp2.md)

<span class="palavras-chave">pinpad sitef clisitef aproximação nfc cartão não lê erro de comunicação cpserver java carga de tabelas tef</span>
