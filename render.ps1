$error.clear()
try {
    R.exe -e "knitr::knit(here::here('notasEstatistica.rmd'))"
    pandoc ".\notasEstatistica.md" -o ".\notasEstatistica.tex" --standalone
    .\tectonic.exe .\notasEstatistica.tex
}
catch {
    
}
if(!$error){
    #Remove-Item .\notasEstatistica.tex
    #Remove-Item .\notasEstatistica.md
}
