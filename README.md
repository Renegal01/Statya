# Рекомендательный подход к модификации пользовательского интерфейса

[![Build PDF](https://github.com/Renegal01/Statya/actions/workflows/build-pdf.yml/badge.svg)](https://github.com/Renegal01/Statya/actions/workflows/build-pdf.yml)

Научная статья в LaTeX о рекомендательном подходе к модификации пользовательского интерфейса на основе анализа трекинга взгляда и аналитических метрик.

## Структура проекта

- `main.tex` — основной исходный файл статьи;
- `references.bib` — автоматически собираемый список литературы;
- `figures/` — изображения статьи;
- `.github/workflows/build-pdf.yml` — автоматическая сборка PDF через GitHub Actions.

## Автоматическая сборка

При каждом `push` в ветку `main`, при создании `pull request` и при ручном запуске workflow GitHub Actions автоматически компилирует `main.tex` с помощью `latexmk`. `latexmk` сам выполняет необходимые проходы LaTeX и запускает Biber для `references.bib`.

После успешной сборки файл `article.pdf` доступен:

1. В разделе **Actions** как артефакт `article-pdf`.
2. В разделе **Releases** как файл последнего релиза `PDF статьи`.

[Скачать последнюю автоматически собранную версию статьи](https://github.com/Renegal01/Statya/releases/download/latest/article.pdf)

## Ручной запуск в GitHub

Откройте **Actions → Build PDF → Run workflow** и запустите сборку для ветки `main`.

## Локальная сборка

При установленном TeX Live / MiKTeX, `latexmk` и Biber:

```bash
latexmk -pdf -file-line-error -halt-on-error -interaction=nonstopmode main.tex
```

Результат будет сохранён в `main.pdf`.
