R.exe -e "knitr::knit(here::here('notasEstatistica.rtex'))"
if($LASTEXITCODE) {return}
.\tectonic.exe .\notasEstatistica.tex
if($LASTEXITCODE) {return}
Remove-Item .\notasEstatistica.tex