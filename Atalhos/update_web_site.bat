@echo off
title Atualizar imagens - GitHub

:: Prompt for Git personal‑access token
:ask_token
set /p GIT_TOKEN="Enter your Git personal access token (or press ENTER to cancel): "
if "%GIT_TOKEN%"=="" (
    echo Token not provided – operation cancelled.
    pause
    exit /b 1
)

cd /d "%~dp0.."

git add images/ >nul 2>&1
if %errorlevel% neq 0 (
    echo Erro no git add.
    pause
    exit /b 1
)

git commit -m "Atualizar imagens" >nul 2>&1
if %errorlevel% neq 0 (
    echo Nao ha alteracoes para commitar ou ocorreu um erro.
    pause
    exit /b 1
)

git push 

echo.
echo Operacao concluida.
pause
