REM Desativando notificacoes na tela
@echo off

REM Guardando o que for digitado na variavel "user_input"
set /p user_input=Digite algo: 

REM Exibindo ao usuario o que fora digitado
echo Voce digitou: %user_input%

REM Pausando antes de fechar o cmd, para ser verificado o que fora digitado
Pause