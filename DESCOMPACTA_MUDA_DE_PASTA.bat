@echo off
setlocal enabledelayedexpansion

echo criando variaveis iniciais abaixo
set "pasta=C:\Teste"
set "pastaDestino=C:\Destino"

echo for para encontrar o arquivo abaixo
for %%F in ("%pasta%\*") do (
    set "primeiro_arquivo=%%~nxF"
    goto :next
)

:next

echo criando caminho completo abaixo
set "caminhoCompleto=C:\Teste\%primeiro_arquivo%"

echo %caminhoCompleto%

echo O primeiro arquivo na pasta %pasta% \ !primeiro_arquivo!

"C:\Program Files\WinRAR\WinRAR.exe" x -o+ %caminhoCompleto% "C:\Destino\"

DEL "C:\Teste\*" /Q

endlocal