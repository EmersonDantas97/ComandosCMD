REM Desativado a visualizacao
@echo off

REM Para onde a execucao voltara
:loop

REM Comando para limpar a tela
cls

REM Guardando o que o usuario digitou na variavel "user_input"
set /p user_input=Digite algo:

REM Mostando para o usuario o que fora digitado
echo Voce digitou: %user_input%

REM Determinando depois de quantos segundos sera executado novamente
timeout /t 10 > nul

REM Comando para voltar a execucao para o inicio do cidigo
goto loop
