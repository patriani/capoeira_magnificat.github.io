@echo off
title Atualizar imagens - GitHub

echo ========================================
echo  Atualizar pasta images/ via Git
echo ========================================
echo.
echo NOTA: Desde 2021 o GitHub NAO aceita password
echo normal para HTTPS. Se falhar, crie um token
echo em https://github.com/settings/tokens e use-o
echo como "password".
echo.
echo.

set /p USER="Utilizador GitHub: "
set /p PASSWORD="Password (ou token): "

cd /d "%~dp0.."

git add images/
if %errorlevel% neq 0 (
    echo Erro no git add.
    pause
    exit /b 1
)

git commit -m "Atualizar imagens"
if %errorlevel% neq 0 (
    echo Nao ha alteracoes para commitar ou ocorreu um erro.
    pause
    exit /b 1
)

git push https://%USER%:%PASSWORD%@github.com/patriani/magnificat.github.io.git

set PASSWORD=

echo.
echo Operacao concluida.
pause
