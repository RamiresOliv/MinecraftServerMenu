@echo off
SET mypath=%cd%

for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)

:comecaratualizacao
echo [%time%] [ATUALIZADOR_MODULE/STARTED]: STARTING MODULE AND MORE>> "Installer\Logs\latest.log"
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
echo [%time%] [ATUALIZADOR_MODULE]: [EM FILA]: iniciando download de Minecraft Server Menu Instaler...>> "Installer\Logs\latest.log"
call :colorEcho 0e "[EM FILA] "
echo : iniciando download de Minecraft Server Menu Instaler...
bitsadmin.exe /transfer "Minecraft Server Menu Instaler" https://raw.githubusercontent.com/gabrielramires/MinecraftServerMenu/Website/Assets/Downloads/Minecraft_Server_Menu_Installer.bat %cd%\Minecraft_Server_Menu_Installer.bat > nul
if exist Minecraft_Server_Menu_Installer.bat (
echo [%time%] [ATUALIZADOR_MODULE]: [DONE],Minecraft Server Menu Instaler instalado>> "Installer\Logs\latest.log"
call :colorEcho 0a "[DONE] "
echo ,Minecraft Server Menu Instaler instalado
) else (
echo [%time%] [ATUALIZADOR_MODULE]: [FATAL ERROR]: Ocorreu um erro ao instalar a Minecraft_Server_Menu_Installer.bat tente novamente mais tarde!>> "Installer\Logs\latest.log"
call :colorEcho 04 "[FATAL ERROR] "
echo : Ocorreu um erro ao instalar a Minecraft_Server_Menu_Installer.bat tente novamente mais tarde! 
)

echo [%time%] [ATUALIZADOR_MODULE]: [EM FILA]: iniciando download de LICENSE >> "Installer\Logs\latest.log"
call :colorEcho 0e "[EM FILA] "
echo : iniciando download de LICENSE
bitsadmin.exe /transfer "LICENSE" https://raw.githubusercontent.com/gabrielramires/MinecraftServerMenu/master/LICENSE %mypath%\LICENSE > nul
if exist LICENSE (
echo [%time%] [ATUALIZADOR_MODULE]: [DONE],LICENSE instalado >> "Installer\Logs\latest.log"
call :colorEcho 0a "[DONE] "
echo ,LICENSE instalado
) else (
echo [%time%] [ATUALIZADOR_MODULE]: [FATAL ERROR]: Ocorreu um erro ao instalar a LICENSE tente novamente mais tarde! >> "Installer\Logs\latest.log"
call :colorEcho 04 "[FATAL ERROR] "
echo : Ocorreu um erro ao instalar a LICENSE tente novamente mais tarde! 
)
echo [%time%] [ATUALIZADOR_MODULE]: [EM FILA]: iniciando download de pacote de versoes... >> "Installer\Logs\latest.log"
call :colorEcho 0e "[EM FILA] "
echo : iniciando download de pacote de versoes...
bitsadmin.exe /transfer "Menu id" https://raw.githubusercontent.com/gabrielramires/MinecraftServerMenu/Files/version.txt %mypath%\versionidlocal.txt > nul
if exist versionidlocal.txt (
attrib +H versionidlocal.txt
echo [%time%] [ATUALIZADOR_MODULE]: [DONE],pacote de versoes instalado >> "Installer\Logs\latest.log"
call :colorEcho 0a "[DONE] "
echo ,pacote de versoes instalado
) else (
echo [%time%] [ATUALIZADOR_MODULE]: [FATAL ERROR]: Ocorreu um erro ao instalar a versionidlocal.txt tente novamente mais tarde! >> "Installer\Logs\latest.log"
call :colorEcho 04 "[FATAL ERROR] "
echo : Ocorreu um erro ao instalar a versionidlocal.txt tente novamente mais tarde! 
)

echo [%time%] [ATUALIZADOR_MODULE]: [EM FILA]: iniciando download de Server.bat >> "Installer\Logs\latest.log"
call :colorEcho 0e "[EM FILA] "
echo : iniciando download de Server.bat
bitsadmin.exe /transfer "Server.bat" https://raw.githubusercontent.com/gabrielramires/MinecraftServerMenu/Website/Assets/Downloads/Minecraft_Java_Server.bat %mypath%\Server.bat > nul
if exist Server.bat (
echo [%time%] [ATUALIZADOR_MODULE]: [DONE],Server.bat instalado >> "Installer\Logs\latest.log"
call :colorEcho 0a "[DONE] "
echo ,Server.bat instalado
) else ( 
echo [%time%] [ATUALIZADOR_MODULE]: [FATAL ERROR] Ocorreu um erro ao instalar a Server.bat tente novamente mais tarde!  >> "Installer\Logs\latest.log"
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
echo [%time%] [ATUALIZADOR_MODULE/ENDED]: Atualizacao ended [hora: %time%]>> "Installer\Logs\latest.log"
pause > nul
cls
start Minecraft_Server_Menu_Installer.bat
exit

:colorEcho
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i
