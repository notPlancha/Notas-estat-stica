R.exe -e "knitr::knit(here::here('notasEstatistica.rmd'))"
if($LASTEXITCODE) {return}
pandoc ".\notasEstatistica.md" -o ".\notasEstatistica.tex" --standalone
#.\umdoc.exe .\notasEstatistica.md -o .\notasEstatistica.tex
if($LASTEXITCODE) {return}
.\tectonic.exe .\notasEstatistica.tex
if($LASTEXITCODE) {return}
Remove-Item .\notasEstatistica.tex
Remove-Item .\notasEstatistica.md

