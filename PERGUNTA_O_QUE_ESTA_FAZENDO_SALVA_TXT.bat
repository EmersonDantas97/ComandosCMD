@echo off
setlocal

REM Obtém a data e hora atual
for /f "tokens=1-4 delims=/ " %%a in ('date /t') do (
    set "day=%%a"
    set "month=%%b"
    set "year=%%c"
)
for /f "tokens=1-2 delims=: " %%a in ('time /t') do (
    set "hour=%%a"
    set "minute=%%b"
)

REM Formata a data e hora
set "datetime=%year%%month%%day%_%hour%%minute%"
set "datetime2=%year%%month%%day%"

REM Pergunta algo ao usuário
set /p "response=Digite algo: "

REM Cria o nome do arquivo com data e hora
set "filename=%datetime2%_Demandas.txt"

REM Grava a resposta no arquivo de texto
echo [%datetime%] %response% >> %filename%

REM Retorno dado ao usuario
echo Resposta gravada com sucesso no arquivo %filename%!

endlocal
