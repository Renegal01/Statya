$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot

latexmk -pdf -file-line-error -halt-on-error -interaction=nonstopmode main.tex
Copy-Item -Path "main.pdf" -Destination "article.pdf" -Force

Write-Host "Готово: article.pdf"
