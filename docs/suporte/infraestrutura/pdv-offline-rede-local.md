---
title: PDV offline em rede local (IP fixo)
description: Fazer os PDVs funcionarem sem internet pela rede local, apontando os caixas secundários para o IP fixo do servidor.
codigo: "INFRA-001"
modulo: Suporte técnico
atualizado: 2026-11-12
---

# PDV offline em rede local (IP fixo)

<div class="cplug-meta" markdown>:material-cog-outline: Configuração · Arquitetura · :material-lan: PDV · Rede · Operação offline · :material-calendar-check: Atualizado em 12/11/2026</div>

**Necessidade:** operar os PDVs na rede local mesmo sem internet.

**Como funciona:** o PDV opera sem internet pela rede local, desde que os computadores estejam no mesmo roteador, com **IP fixo** na mesma faixa e a porta liberada no **firewall**. Sem internet, **não há sincronização com o ERP na nuvem** e as notas saem em **contingência**.

!!! info "Pré-requisitos"
    - **Roteador/modem ligado:** é ele que faz a comunicação local entre as máquinas.
    - **Mesma rede:** servidor e PDVs secundários na mesma rede local, com **IP fixo na mesma faixa** (ex.: `192.168.1.X`). Veja [Configuração de IP fixo no Windows](ip-fixo-no-windows.md).
    - **Firewall do Windows:** desligado, ou com a porta `12000` liberada. Veja [Desativação do firewall do Windows](desativar-firewall.md).
    - **Contingência fiscal:** emissão em contingência configurada no PDV para emitir NFC-e sem internet.

## Passo a passo

1. **No PDV servidor (máquina principal):** a aplicação conecta localmente por `localhost`. Nada a mudar.
2. **Nos PDVs secundários:**
    1. Abra a tela de conexão com o servidor no PDV.
    2. No campo **IP do servidor**, troque `localhost` pelo **IP fixo da máquina servidora** (ex.: `192.168.1.100`).
    3. Mantenha a **Porta** padrão `12000`.
    4. Salve/volte ao início e confira a mensagem **Você está conectado ao servidor**.

## Resultado esperado

- Os PDVs secundários falam com o servidor e vendem normalmente, mesmo com a internet da loja fora.
- Sem internet, as notas saem em **contingência** e o ERP só sincroniza quando a conexão voltar.

??? question "Os PDVs secundários não conectam"
    Confira se o modem está ligado, se o firewall do servidor não bloqueou a porta `12000` e se o IP fixo do servidor não mudou.

**Relacionados:** [Fechamento de caixa com vários PDVs](../pdv/fechamento-com-varios-pdvs.md)

<span class="palavras-chave">pdv offline sem internet rede local ip do servidor localhost porta 12000 pdv secundário contingência você está conectado ao servidor</span>
