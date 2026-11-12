---
title: Impressora USB no ERP 1
description: Servidor CPrint e ponto de impressão no ERP 1 para impressora USB, via compartilhamento do Windows.
codigo: "PER-002"
modulo: Suporte técnico
atualizado: 2026-11-12
---

# Impressora USB no ERP 1

<div class="cplug-meta" markdown>:material-cog-outline: Configuração · :material-tag-outline: ERP 1.0 (legado) · Periféricos · Impressão · :material-calendar-check: Atualizado em 12/11/2026</div>

**Objetivo:** criar o Servidor CPrint e configurar o ponto de impressão no ERP 1, mapeando a impressora USB pelo compartilhamento do Windows.

!!! info "Antes de começar"
    A página de teste do Windows precisa sair normalmente. Veja [Impressora não imprime a página de teste do Windows](impressora-sem-pagina-de-teste.md).

## Parte 1: nome de compartilhamento no Windows

1. Pressione **Windows + R**, digite `control printers` e pressione **Enter**.
2. Clique com o botão direito na impressora térmica e selecione **Propriedades da Impressora**.
3. Abra a aba **Compartilhamento**.
4. Deixe marcada a caixa **Compartilhar esta impressora**.
5. Copie exatamente o texto do campo **Nome de compartilhamento** (ex.: `caixa`).

## Parte 2: Servidor CPrint no ERP 1

1. No ERP 1, clique na **engrenagem > Configurações do PDV > Servidores CPrint**.
2. Adicione ou edite o servidor e defina o **Endereço IP** conforme o cenário:
    - **Cenário A (impressão em um único PDV):** a impressora só imprime no computador onde está ligada. Use `127.0.0.1`.
    - **Cenário B (atendimento de mesas ou outro computador):** a impressora recebe do aplicativo de mesas ou de outro caixa. Use o IP de rede da máquina onde ela está ligada via USB (ex.: `192.168.18.200`).
3. Em **Porta**, informe `8081`.
4. Em **Versão**, marque **2.0** e clique em **Salvar**.

## Parte 3: ponto de impressão no ERP 1

1. Na mesma tela, abra a aba **Pontos de Impressão** e clique em **Editar** (ou cadastre) a impressora.
2. Em **Porta ou IP da Impressora**, monte o caminho com o IP local e o nome de compartilhamento da Parte 1: `\\127.0.0.1\<nome_do_compartilhamento>` (ex.: `\\127.0.0.1\caixa`).
3. Em **Porta da Impressora de Rede**, informe `9100`.
4. Em **Tipo de Comunicação**, selecione **Acesso Direto**.
5. Em **Servidor CPrint**, selecione o servidor criado na Parte 2.
6. Preencha **Fabricante** (ex.: ELGIN) e **Modelo** (ex.: I9) e clique em **Salvar**.

## Resultado esperado

- O CPrint faz a ponte entre o ERP e a fila do Windows. Ao enviar uma venda ou pedido, a impressão térmica sai na hora pelo caminho configurado.

**Relacionados:** [Impressora USB no ERP 2](impressora-usb-erp2.md) · [Impressora de rede no ERP 1](impressora-rede-erp1.md)

<span class="palavras-chave">impressora usb erp 1 legado cprint servidor cprint ponto de impressão compartilhamento 127.0.0.1 9100 8081 acesso direto</span>
