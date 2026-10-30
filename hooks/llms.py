"""Gera /llms.txt (índice) e /llms-full.txt (todos os manuais em texto) para agentes de IA."""
import os
import re

_paginas = []


def on_pre_build(config, **kwargs):
    _paginas.clear()


def on_page_markdown(markdown, page, config, files, **kwargs):
    meta = page.meta or {}
    if not meta.get("codigo"):
        return markdown
    texto = re.sub(r"!\[([^\]]*)\]\([^)]*\)(\{[^}]*\})?", r"[Imagem: \1]", markdown)
    texto = re.sub(r"<span class=\"palavras-chave\">(.*?)</span>", r"Palavras-chave: \1", texto)
    texto = re.sub(r"</?div[^>]*>", "", texto)
    texto = re.sub(r":material-[a-z0-9-]+:\s*", "", texto)
    url = config["site_url"].rstrip("/") + "/" + page.url
    _paginas.append({
        "codigo": str(meta["codigo"]),
        "titulo": page.title,
        "descricao": meta.get("description", ""),
        "modulo": meta.get("modulo", ""),
        "tela": meta.get("tela", ""),
        "url": url,
        "texto": texto.strip(),
    })
    return markdown


def on_post_build(config, **kwargs):
    paginas = sorted(_paginas, key=lambda p: p["codigo"])
    indice = [f"# {config['site_name']}", "", f"> {config['site_description']}", "", "## Manuais", ""]
    indice += [f"- [{p['codigo']} {p['titulo']}]({p['url']}): {p['descricao']}" for p in paginas]
    completo = [f"# {config['site_name']}", ""]
    for p in paginas:
        completo += [
            "---",
            f"Código: {p['codigo']} | Módulo: {p['modulo']} | Tela no sistema: {p['tela']}",
            f"Endereço: {p['url']}",
            "",
            p["texto"],
            "",
        ]
    destino = config["site_dir"]
    with open(os.path.join(destino, "llms.txt"), "w", encoding="utf-8") as f:
        f.write("\n".join(indice) + "\n")
    with open(os.path.join(destino, "llms-full.txt"), "w", encoding="utf-8") as f:
        f.write("\n".join(completo))
