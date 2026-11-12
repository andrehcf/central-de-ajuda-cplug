---
title: Desativação do firewall do Windows (servidor e PDVs)
description: Desativar o firewall do Windows Defender para liberar a comunicação entre servidor e PDVs na rede local (porta 12000).
codigo: "INFRA-003"
modulo: Suporte técnico
atualizado: 2026-11-12
---

# Desativação do firewall do Windows (servidor e PDVs)

<div class="cplug-meta" markdown>:material-cog-outline: Infraestrutura · Segurança · :material-lan: Rede · PDV · Firewall · :material-calendar-check: Atualizado em 12/11/2026</div>

**Necessidade:** liberar a comunicação na rede local entre servidor e PDVs secundários, sem bloqueio na porta de comunicação (ex.: `12000`).

**Por que:** o firewall do Windows filtra conexões. Com as regras padrão, costuma bloquear conexões vindas de outros computadores da rede, e o PDV secundário não encontra o servidor.

## Passo a passo (pelo Executar)

1. Pressione **Windows + R**.
2. Digite `firewall.cpl` e pressione **Enter**.
3. Na janela do **Firewall do Windows Defender**, clique, à esquerda, em **Ativar ou desativar o Firewall do Windows Defender**.
4. Em **Configurações de rede privada**, marque **Desativar o Firewall do Windows Defender (não recomendado)**.
5. Em **Configurações de rede pública**, marque **Desativar o Firewall do Windows Defender (não recomendado)**.
6. Clique em **OK**.

## Resultado esperado

- As portas locais ficam liberadas entre os computadores da loja.
- Os PDVs secundários conectam ao IP do servidor sem erro de conexão recusada ou timeout.
- O Windows pode mostrar um aviso de firewall desativado na área de notificação. É normal.

**Relacionados:** [PDV offline em rede local](pdv-offline-rede-local.md) · [Configuração de IP fixo no Windows](ip-fixo-no-windows.md)

<span class="palavras-chave">firewall windows defender desativar firewall.cpl porta 12000 bloqueio conexão recusada timeout pdv secundário servidor rede local</span>
