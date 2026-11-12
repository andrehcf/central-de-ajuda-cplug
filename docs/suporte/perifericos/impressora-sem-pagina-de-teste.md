---
title: Impressora não imprime a página de teste do Windows
description: Impressora térmica USB não imprime nem a página de teste. Portas COM presas, ComDB no Regedit, reset físico e diagnóstico.
codigo: "PER-001"
modulo: Suporte técnico
atualizado: 2026-11-12
---

# Impressora não imprime a página de teste do Windows

<div class="cplug-meta" markdown>:material-alert-circle-outline: Erro · :material-printer-outline: Periféricos · Impressão · Hardware · :material-tag-outline: Windows · vale para ERP Legado e ERP 2.0 · :material-calendar-check: Atualizado em 12/11/2026</div>

**Sintoma:** a impressora térmica USB não imprime a página de teste do Windows, e nada sai pelo PDV ou pelo ERP.

**Causa:** travamento do USB na placa da impressora, portas COM virtuais ocultas congestionadas no Windows, falta de bobina ou falha física no cabo ou no equipamento.

## Parte 1: testar pelo painel de impressoras

1. Pressione **Windows + R**.
2. Digite `control printers` e pressione **Enter**.
3. Em **Dispositivos e Impressoras**, localize a impressora térmica.
4. Clique com o botão direito e selecione **Propriedades da Impressora** (não o "Propriedades" do fim da lista).
5. Clique com o botão direito de novo e selecione **Ver o que está sendo impresso**. Deixe as duas janelas lado a lado.
6. Na aba **Geral**, clique em **Imprimir Página de Teste**. Se o papel não sair, siga para a Parte 2.

## Parte 2: identificar a porta (COM ou USB)

1. Em **Propriedades da Impressora**, abra a aba **Portas**.
2. Veja qual linha está marcada e anote se é porta virtual (ex.: `USB001`) ou de comunicação (ex.: `COM3`).
3. Pressione **Windows + R**, digite `devmgmt.msc` e pressione **Enter**.
4. Expanda **Portas (COM e LPT)** ou **Controladores USB**. Veja se a impressora ou um "USB Serial Port" aparece com a porta. Um triângulo amarelo com exclamação indica conflito de driver.

## Parte 3: limpar portas COM presas no Regedit

1. Pressione **Windows + R**, digite `regedit` e pressione **Enter**. Clique em **Sim** na autorização.
2. Na barra de endereço do Editor do Registro, cole o caminho abaixo e pressione **Enter**:

    ```
    HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\COM Name Arbiter
    ```

3. À direita, localize o valor **ComDB**.
4. Clique com o botão direito em **ComDB**, selecione **Excluir** e confirme. O Windows recria o valor limpo ao reiniciar.
5. Feche o Editor do Registro, desconecte o cabo da impressora e conecte de novo.

## Parte 4: ciclo de energia e reset físico

Se continuar sem responder, nesta ordem:

1. Desligue a impressora no botão.
2. Desconecte todos os cabos da traseira (energia e USB).
3. Aguarde 10 segundos.
4. Conecte os cabos de volta, firmes.
5. Ligue a impressora e troque o cabo USB para outra porta do computador (de preferência as traseiras, da placa-mãe).

## Parte 5: últimas tentativas e diagnóstico

1. Desinstale o driver do fabricante pelo Painel de Controle e instale de novo.
2. Confira o básico no equipamento:
    - a bobina térmica no lado certo (o lado brilhante, sensível ao calor, virado para frente);
    - a tampa fechada até o clique;
    - o botão **FEED (Avanço)**: se o papel avança, guilhotina e motor funcionam.

## Resultado esperado

- Depois da limpeza do Regedit e da troca de porta USB, o Windows associa a impressora a uma porta limpa (geralmente COM1 ou COM2), libera a fila e imprime a página de teste.

!!! warning "Defeito de hardware"
    Se o **FEED** não avança o papel, ou se a página de teste continua falhando mesmo trocando cabos e computador, é defeito físico. Oriente o cliente a acionar a garantia ou levar a uma assistência técnica.

**Relacionados:** [Impressora USB no ERP 2.0](impressora-usb-erp2.md) · [Impressora USB no ERP Legado](impressora-usb-erp1.md)

<span class="palavras-chave">impressora não imprime página de teste térmica usb porta com usb001 regedit comdb com name arbiter gerenciador de dispositivos driver bobina feed</span>
