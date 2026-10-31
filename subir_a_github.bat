@echo off
chcp 65001 >nul
cd /d "%~dp0"
title Subir Actualizacion a GitHub

echo ====================================================================
echo   SUBIENDO ACTUALIZACION A GITHUB (davaloc82/creador-videos-releases)
echo ====================================================================
echo.

git push -u origin main

echo.
if errorlevel 1 (
    echo [AVISO] Si es la primera vez que subes, GitHub abrira una ventana en tu navegador
    echo         para que autorices con tu usuario "davaloc82".
) else (
    echo ====================================================================
    echo   [EXITO TOTAL] ¡ACTUALIZACION PUBLICADA EN VIVO EN GITHUB!
    echo   Todos tus clientes recibiran la actualizacion al abrir el panel.
    echo ====================================================================
)
echo.
pause

