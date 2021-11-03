@echo off
SET mypath=%cd%

for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)

:comecaratualizacao
title Inicializando...
cls
echo arrumando o quarto...
timeout /t 2 /nobreak > nul
title Minecraft Server Menu Instaler Updating...
attrib -H versionidlocal.txt
del "versionidlocal.txt"
del "Server.bat"
del "Minecraft_Server_Menu_Installer.bat"
del "Main.bat"
del "LICENSE"
cls
call :colorEcho 03 "[LOGS]"
echo :
call :colorEcho 0e "[EM FILA] :"
echo iniciando download de Minecraft Server Menu Instaler...
bitsadmin.exe /transfer "Minecraft Server Menu Instaler" https://raw.githubusercontent.com/gabrielramires/MinecraftServerMenu/Website/Assets/Downloads/Minecraft_Server_Menu_Installer.bat %cd%\Minecraft_Server_Menu_Installer.bat > nul
if exist Minecraft_Server_Menu_Installer.bat (
call :colorEcho 0a "[DONE] :"
echo Minecraft Server Menu Instaler instalado
) else (
call :colorEcho 04 "[FATAL ERROR] "
echo : Ocorreu um erro ao instalar a Minecraft_Server_Menu_Installer.bat tente novamente mais tarde! 
)

call :colorEcho 0e "[EM FILA] "
echo : iniciando download de LICENSE
bitsadmin.exe /transfer "LICENSE" https://raw.githubusercontent.com/gabrielramires/MinecraftServerMenu/Files/LICENSE.txt %mypath%\LICENSE > nul
if exist LICENSE (
call :colorEcho 0a "[DONE] :"
echo LICENSE instalado
) else (
call :colorEcho 04 "[FATAL ERROR] "
echo : Ocorreu um erro ao instalar a LICENSE tente novamente mais tarde! 
)
call :colorEcho 0e "[EM FILA] "
echo : iniciando download de pacote de versoes...
bitsadmin.exe /transfer "Menu id" https://raw.githubusercontent.com/gabrielramires/MinecraftServerMenu/Files/version.txt %mypath%\versionidlocal.txt > nul
if exist versionidlocal.txt (
attrib +H versionidlocal.txt
call :colorEcho 0a "[DONE] :"
echo pacote de versoes instalado
) else (
call :colorEcho 04 "[FATAL ERROR] "
echo : Ocorreu um erro ao instalar a versionidlocal.txt tente novamente mais tarde! 
)

call :colorEcho 0e "[EM FILA] "
echo : iniciando download de Server.bat
bitsadmin.exe /transfer "Server.bat" https://raw.githubusercontent.com/gabrielramires/MinecraftServerMenu/Website/Assets/Downloads/Minecraft_Server_Menu_Installer.bat %mypath%\Server.bat > nul
if exist Server.bat (
call :colorEcho 0a "[DONE] :"
echo Server.bat instalado
) else ( 
call :colorEcho 04 "[FATAL ERROR] "
echo : Ocorreu um erro ao instalar a Server.bat tente novamente mais tarde! 
)
echo [HTTPS]: conectando...
title Minecraft Server Menu Instaler Update Ended
timeout /t 2 /nobreak > nul
call :colorEcho 03 "[LOG] "
echo : Atualizacao terminou.
call :colorEcho 0a "[ENDED] "
echo : Ended.
pause > nul
cls
start Minecraft_Server_Menu_Installer.bat
exit

:colorEcho
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i
