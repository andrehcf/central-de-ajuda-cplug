---
title: Impressora USB no ERP 2.0
description: Cadastrar impressora térmica USB em Periféricos no ERP 2.0, pelo compartilhamento do Windows e servidor de impressão.
codigo: "PER-005"
modulo: Suporte técnico
tela: /dashboard/app/peripherals
atualizado: 2026-11-12
---

# Impressora USB no ERP 2.0

<div class="cplug-meta" markdown>:material-cog-outline: Configuração · :material-tag-outline: ERP 2.0 · Periféricos · Impressão · :material-calendar-check: Atualizado em 12/11/2026</div>

**Objetivo:** configurar uma impressora térmica USB no ERP 2.0, mapeando pelo compartilhamento do Windows e direcionando os dados ao servidor de impressão.

!!! info "Antes de começar"
    A página de teste do Windows precisa sair normalmente. Veja [Impressora não imprime a página de teste do Windows](impressora-sem-pagina-de-teste.md).

## Parte 1: nome de compartilhamento no Windows

1. Pressione **Windows + R**, digite `control printers` e pressione **Enter**.
2. Clique com o botão direito na impressora térmica e selecione **Propriedades da Impressora**.
3. Abra a aba **Compartilhamento**.
4. Deixe marcada a caixa **Compartilhar esta impressora**.
5. Copie exatamente o **Nome de compartilhamento** (ex.: `caixa`).

## Parte 2: cadastro do periférico no ERP 2.0

1. No menu lateral, acesse **Configurações > Periféricos** e clique em **Novo periférico**.
2. Escolha o tipo **Impressora** e clique em **Avançar**. Abre a tela **Novo ponto de impressão**.
3. Preencha:
    - **Nome:** conforme o uso (ex.: Bar, Cozinha, Caixa, Parcial).
    - **Descrição:** opcional, para observações internas.
    - **Fabricante** e **Modelo:** os do equipamento.
    - **Tipo de comunicação:** **Acesso direto**.
4. No campo do endereço do periférico, monte o caminho com o IP local e o nome de compartilhamento: `\\127.0.0.1\<nome_do_compartilhamento>` (ex.: `\\127.0.0.1\caixa`).
5. Em **Porta do periférico na rede**, confira `9100` (já vem preenchido).
6. Em **Informações do Servidor**, defina o **IP** conforme o cenário:
    - **Cenário A (impressão em um único PDV):** a impressora só imprime no computador onde está ligada. Use `127.0.0.1` (já vem preenchido).
    - **Cenário B (atendimento de mesas ou outro computador):** a impressora recebe do aplicativo de mesas ou de outro caixa. Use o IP de rede da máquina onde ela está ligada via USB (ex.: `192.168.18.200`).
7. Em **Porta** (do servidor), confira `8081` (já vem preenchido).
8. Salve, no rodapé da página.

!!! note "Tipo de comunicação"
    O campo tem as opções **Acesso direto**, **DLL**, **Serial**, **Spooler** e **USB**. Para o caminho de compartilhamento `\\127.0.0.1\...`, use **Acesso direto**.

## Resultado esperado

- O ERP 2.0 envia as impressões ao serviço local na porta 8081, que faz a ponte com a fila do Windows pelo caminho `\\127.0.0.1\<nome_do_compartilhamento>`, e a impressão térmica sai na hora.

**Relacionados:** [Impressora USB no ERP Legado](impressora-usb-erp1.md) · [Impressora não aparece na impressão parcial de mesas](../erp/impressora-impressao-parcial.md)

<span class="palavras-chave">impressora usb erp 2 periféricos novo periférico novo ponto de impressão compartilhamento 127.0.0.1 9100 8081 acesso direto informações do servidor</span>
