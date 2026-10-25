# Recopilatorio: cómo hacer un README muy profesional

> Memoria guardada para sesiones de OpenCode. Origen: búsqueda curada el
> 2026-10-25. NO aplicar sin pedirlo; solo se guardó como material de estudio.

## Objetivo

Elevar los READMEs de `omarchy-conf` y `nothing-dark-configs` (y futuros repos)
a nivel "puta madre": banner, badges, GIF demo, estructura clara, tono sobrio
fiel al estilo Nothing (grafito + un acento rojo #D71921).

## Guías fundamentales

| Recurso | Qué aporta |
|---|---|
| [Make a README](https://www.makeareadme.com/) | La guía canónica: qué secciones merecen existir por tipo de proyecto, template editable. Corto y directo |
| [The Art of README](https://github.com/hacktivistto/The-Art-of-README) | Ensayo clásico de estructura con propósito (what/why/how/contributing) |
| [Thoughtbot: How To Write a Great README](https://thoughtbot.com/blog/how-to-write-a-great-readme) | Modelo "README como puerta de entrada", 10 min de lectura |
| [README Driven Development — Tom Preston-Werner](https://tom.preston-werner.com/2010/08/23/readme-driven-development.html) | Escribir el README antes que el código |
| [Yegor: Elegant READMEs](https://www.yegor256.com/2019/04/23/elegant-readme.html) | Postura minimalista/opinionada como contrapunto |

## Ejemplos de README destacables (robar ideas)

Fuente maestra: [awesome-readme](https://github.com/matiassingers/awesome-readme) (21.6k⭐).

Relevantes para dotfiles/temas de terminal:

- **[doomemacs/doomemacs](https://github.com/doomemacs/doomemacs#readme)** — título centrado, badges, screenshot del UI, humor. El gold standard de "tool con estética"
- **[GyulyVGC/sniffnet](https://github.com/GyulyVGC/sniffnet#readme)** — banner custom, tokens de badge, tabla de instalación, footer con socials
- **[CCOSTAN/Home-AssistantConfig](https://github.com/CCOSTAN/Home-AssistantConfig#readme)** — la referencia de *dotfiles con banner + badges + nav*; trasladable a omarchy-conf
- **[sourcerer-io/sourcerer-app](https://github.com/sourcerer-io/sourcerer-app)** — GIF animado como hero
- **[yvann-ba/ft_transcendence](https://github.com/yvann-ba/ft_transcendence#readme)** — banner minimal + galería de GIFs en tabla (nada de alternativas), estética affine a Nothing

## Especificaciones y plantillas

- [Standard Readme](https://github.com/RichardLitt/standard-readme) — spec con generar; secciones fijas (Background / Install / Usage / Related)
- [Zalando README Template](https://github.com/zalando/zalando-howto-open-source/blob/master/READMEtemplate.md) — corporativo sobrio
- [READMINE](https://github.com/mhucka/readmine) — plantilla maximalista autodescriptiva
- [Amazing GitHub Template](https://github.com/dec0dOS/amazing-github-template) — pack README + CONTRIBUTING + LICENSE + issue templates

## Herramientas de polish

- **[charmbracelet/vhs](https://github.com/charmbracelet/vhs)** (21.2k⭐) — GIFs de terminal "as code": fichero `.tape` con script → GIF. Temas incluidos o JSON con las 16 horas; `Set WindowBar`, `Set BorderRadius`, `Set MarginFill` para el look "ventana"; `vhs record` captura teclas reales; outputs GIF/MP4/WebM/PNG/ascii. Necesita `ttyd` + `ffmpeg`; en Arch: `pacman -S vhs`. **Candidato a hero GIF de nothing-dark-configs.**
- [shields.io](https://shields.io/) — badges (versión, plataforma, tamaño). Idea: badge "Omarchy + Hyprland" en omarchy-conf
- [github-readme-stats](https://github.com/anuraghazra/github-readme-stats) — tarjetas dinámicas de perfil
- [ezgif](https://ezgif.com/) / [Gifski](https://github.com/sindresorhus/Gifski) — construir GIF/APNG desde capturas

## Técnica extra

- [ARCHITECTURE.md (matklad)](https://matklad.github.io/2021/02/06/ARCHITECTURE.md.html) — separar el "cómo funciona por dentro" del README; aplicable a omarchy-conf (symlinks + systemd watcher + submódulo pinned)
- [GitHub Community Standards](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-community-standards-for-repository-health) — LICENSE + CONTRIBUTING + issue templates suben el score de repo saludable

## Picks recomendados para estos repos (orden de aplicación)

1. `makeareadme.com` — decidir/ajustar la estructura de secciones
2. `vhs` — hero GIF del TUI con la paleta Nothing (fichero `.tape` versionado en el repo)
3. Formato de `doomemacs` / `Home-AssistantConfig` — banner + badges + nav + screenshot
4. Añadir LICENSE (MIT) + CONTRIBUTING.md ligero; badges estáticos con shields.io
5. Opcional: ARCHITECTURE.md breve en omarchy-conf

## Estado actual (para no repetir trabajo)

- Ambos repos ya están en `main`, con screenshots frameados
  (`docs/image-frame.sh`: rounded + border #3F3F3F + sombra) y un README aceptable
- Deuda concreta identifiers: banner de cabecera ausente, sin badges, sin
  LICENSE, sin nav/TOC, README solo en inglés con toques de rapidísimo
  - nada medible de GitHub Actions aún
