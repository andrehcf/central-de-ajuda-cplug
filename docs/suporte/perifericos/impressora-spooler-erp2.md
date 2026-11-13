---
title: Impressora de rede com spooler/driver do Windows no ERP 2.0
description: Impressora de rede com driver instalado no Windows, cadastrada em Periféricos no ERP 2.0 pelo compartilhamento local.
codigo: "PER-006"
modulo: Suporte técnico
tela: /dashboard/app/peripherals
atualizado: 2026-11-12
---

# Impressora de rede com spooler/driver do Windows no ERP 2.0

<div class="cplug-meta" markdown>:material-cog-outline: Configuração · :material-tag-outline: ERP 2.0 · Periféricos · Rede com driver · :material-calendar-check: Atualizado em 12/11/2026</div>

**Objetivo:** configurar no ERP 2.0 impressoras de rede cujo driver/spooler está instalado no Windows (apontando para uma porta IP), usando o compartilhamento local para falar com o servidor de impressão.

!!! info "Antes de começar"
    - Driver da impressora instalado no Windows, com a porta configurada para o IP da impressora (ex.: `192.168.15.200`).
    - A página de teste do Windows sai normalmente pelo Painel de Controle (`control printers`).

## Parte 1: compartilhamento no Windows

1. Pressione **Windows + R**, digite `control printers` e pressione **Enter**.
2. Clique com o botão direito na impressora de rede e selecione **Propriedades da Impressora**.
3. Na aba **Compartilhamento**, marque **Compartilhar esta impressora**.
4. Copie exatamente o **Nome de compartilhamento** (ex.: `cozinha`).

## Parte 2: cadastro do periférico no ERP 2.0

1. No menu lateral, acesse **Configurações > Periféricos** e clique em **Novo periférico**.
2. Escolha o tipo **Impressora** e clique em **Avançar**. Abre a tela **Novo ponto de impressão**.
3. Preencha:
    - **Nome:** conforme o uso (ex.: Cozinha, Bar, Caixa).
    - **Descrição:** obrigatória (ex.: "Impressora da cozinha").
    - **Fabricante** e **Modelo:** os do equipamento.
    - **Tipo de comunicação:** **Acesso direto**.
4. No campo do endereço do periférico, use o caminho de compartilhamento: `\\127.0.0.1\<nome_do_compartilhamento>` (ex.: `\\127.0.0.1\cozinha`).
5. Em **Porta do periférico na rede**, confira `9100` (já vem preenchido).
6. Em **Informações do Servidor**, defina o **IP** conforme o cenário:
    - **Cenário A (só o PDV local imprime):** use `127.0.0.1` (já vem preenchido).
    - **Cenário B (aplicativo de mesas ou outro computador):** use o IP de rede do computador onde o driver/spooler está instalado (ex.: `192.168.18.200`).
7. Em **Porta** (do servidor), mantenha `8081`.
8. Salve, no rodapé da página.

!!! note "Tipo de comunicação"
    O campo também tem a opção **Spooler**. O padrão deste procedimento é **Acesso direto** com o caminho de compartilhamento.

## Resultado esperado

- Ao emitir um pedido ou comanda, o ERP 2.0 chama o serviço de impressão na porta 8081, que joga o documento na fila do Windows pelo caminho `\\127.0.0.1\cozinha`, e o driver envia para a impressora de rede.

**Relacionados:** [Impressora de rede com spooler no ERP Legado](impressora-spooler-erp1.md) · [Impressora de rede direta no ERP 2.0](impressora-rede-erp2.md)

<span class="palavras-chave">impressora de rede driver spooler windows erp 2 periféricos novo ponto de impressão compartilhamento aplicativo de mesas 127.0.0.1 9100 8081</span>
