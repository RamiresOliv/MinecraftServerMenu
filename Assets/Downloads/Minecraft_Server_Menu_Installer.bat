@echo off
SET mypath=%cd%

for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)

:menu
title Minecraft Server Menu Instaler
cls
if exist Atualizador_TEMP_FILE.bat (
  del "Atualizador_TEMP_FILE.bat"
  call :colorEcho 06 "[WARN] "
  echo : um tipo de programa redirecionou voce para o menu novamente provavelmente foi a atualizacao ou outra coisa.
  echo.
)
echo (os problemas de escrita ficara assim para que nao ocorra erros como esse: não, é, olá)
echo.
echo Bem Vindo(a) %username% este e o instalador do Minecraft Server Menu
echo n - Sair
echo s - Comecar download
echo a - Verificar se a Atualizacoes pendentes
echo r - Remover Menu
echo.
set /p opcao= N/S/A/R : 

if %opcao% equ r goto certezaemremover
if %opcao% equ R goto certezaemremover
if %opcao% equ n goto notready
if %opcao% equ s goto ready
if %opcao% equ A goto atualizacao
if %opcao% equ a goto atualizacao
if %opcao% equ N goto notready 
if %opcao% equ S goto ready
if %opcao% GEQ 0 goto menu

:notready
msg * Desculpe-me ate mais Tarde, %username%.
exit

:ready
title Minecraft Server Menu Instaler / Download
Ping www.google.nl -n 1 -w 1000
cls
if errorlevel 1 (set internet=false) else (set internet=true)
if %internet% == false ( 
msg * Desculpe mas nao foi possivel conectar com o servidor do site porfavor tente novamente verifique sua rede wifi.
goto menu
)
if exist Server.bat (
msg * Um problema aconteceu: Parece que o arquivo Server.bat ja existe para atualizar ele primeiro remova-o!
goto menu
) else (
echo Iniciando Download...
timeout /t 2 /nobreak > nul
cls
echo Fazendo Download..
echo Isso pode demorar um pouco.
echo voce sabia que esse sistema de download foi criado para ajudar na hora da atualizacao porque, e so voce remover o Server.bat e voutar aqui sabia?
echo.
call :colorEcho 03 "[LOGS]"
echo :
call :colorEcho 0e "[EM FILA] "
echo : iniciando download de LICENSE
bitsadmin.exe /transfer "LICENSE" https://raw.githubusercontent.com/gabrielramires/MinecraftServerMenu/Files/LICENSE.txt %mypath%\LICENSE > nul
if exist LICENSE (
call :colorEcho 0a "[DONE] "
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
call :colorEcho 0a "[DONE] "
echo pacote de versoes instalado
) else (
call :colorEcho 04 "[FATAL ERROR] "
echo : Ocorreu um erro ao instalar a versionidlocal.txt tente novamente mais tarde! 
)
call :colorEcho 0e "[EM FILA] "
echo : iniciando download de Server.bat
bitsadmin.exe /transfer "Server.bat" https://raw.githubusercontent.com/gabrielramires/MinecraftServerMenu/Website/Assets/Downloads/Minecraft_Server_Menu_Installer.bat %mypath%\Server.bat > nul
if exist Server.bat (
call :colorEcho 0a "[DONE] "
echo Server.bat instalado
) else ( 
call :colorEcho 04 "[FATAL ERROR] "
echo : Ocorreu um erro ao instalar a Server.bat tente novamente mais tarde! 
)
echo [HTTPS]: conectando...
timeout /t 2 /nobreak > nul
call :colorEcho 0a "[DONE] "
echo : Done.
call :colorEcho 03 "[LOG]"
echo : Incrivel!
call :colorEcho 03 "[LOG]"
echo : Tudo certo verifique se tudo foi instalado corretamente agora e so executar um arquivo com o nome de Server.bat
call :colorEcho 03 "[LOG]"
echo : Lembre-se: se voce estiver com duvidas de updates e so voutar para a pagina principal do Bat istalador e apertar "a" ele ira te mostrar se a alguma atualizacao pendente.
call :colorEcho 03 "[LOG] "
echo : aperte qualquer coisa para voltar...
title Minecraft Server Menu Instaler / Download / Ended
pause > nul
cls
goto menu
)

:atualizacao
title Minecraft Server Menu Instaler / Update Verify...
if exist Server.bat (
echo exist Server.bat
) else (
msg * Porfavor faca Download do Server.bat primeiro antes de atualizar!
goto menu
)
cls
echo um momento...
echo lembre-se isso pode demorar um pouco...
bitsadmin.exe /transfer "JobName" https://raw.githubusercontent.com/gabrielramires/MinecraftServerMenu/Files/version.txt %mypath%\VersionId.txt > nul
if errorlevel 1 ( 
call :colorEcho 04 "[FATAL ERROR] "
echo : Ocorreu um erro na atualizacao tente novamente mais tarde! 
)
set /p WebVersionId=<VersionId.txt
attrib -H versionidlocal.txt
set /p LocalVersionId=<versionidlocal.txt
if %WebVersionId% == %LocalVersionId% (
del "VersionId.txt"
attrib +H versionidlocal.txt

title Minecraft Server Menu Instaler / Update Verify... / Ended
echo Tudo certo nao a nenhuma atualizacao pendente!
echo aperte qualquer coisa para voltar...
pause > nul
goto menu
)
:pendente
del "VersionId.txt"
attrib +H versionidlocal.txt
cls
echo achamos uma atualizacao pendente!
echo ID da nova atualizacao: %WebVersionId%
echo deseja comecar a instalacao?
set /p opcao= N/S : 

if %opcao% equ s goto comecaratualizacao
if %opcao% equ S goto comecaratualizacao

if %opcao% equ n goto menu
if %opcao% equ N goto menu

if %opcao% GEQ 0 goto pendente

:comecaratualizacao
title Minecraft Server Menu Instaler / Update Verify / Updating...
cls
echo porfavor espere estamos fazendo download da atualizacao...
echo estamos configurando algums Bats para iniciar o download da atualizacao.
echo (seja paciente pode demorar)
echo quando iniciar a atualização ira aparecer em outra tela
echo qundo a atualização terminar
echo voce sera redirecionado para a pagina normalmente.
bitsadmin.exe /transfer "Instaler" https://raw.githubusercontent.com/gabrielramires/MinecraftServerMenu/Files/Downloads/Atualizador.bat %mypath%\Atualizador_TEMP_FILE.bat > nul
start Atualizador_TEMP_FILE.bat
exit

:certezaemremover
title Minecraft Server Menu Instaler / Remover
cls
echo ESSA OPCAO E INRRERVERTIVEL
echo Voce tem certeza em remover o Menu?
echo ao remove-lo ele ira tirar tudo que foi colocado (se acontecer que sobrou restos voce pode remover)

set /p opcao= N/S : 

if %opcao% equ n goto menu
if %opcao% equ N goto menu
if %opcao% equ s goto removertype
if %opcao% equ S goto removertype
if %opcao% GEQ 0 goto certezaemremover

:removertype
cls
echo porfavor escolha o tipo da limpeza:
echo Rapida - Limpara tudo oque tiver menos arquivos importantes
echo Limpa - Limpara tudo ate arquivos importantes
set /p opcaoremovertype= Rapida/Limpa : 

if %opcaoremovertype% equ Rapida goto remover
if %opcaoremovertype% equ Limpa goto remover
if %opcaoremovertype% equ rapida goto remover
if %opcaoremovertype% equ limpa goto remover
if %opcaoremovertype% equ R goto remover
if %opcaoremovertype% equ L goto remover
if %opcaoremovertype% equ r goto remover
if %opcaoremovertype% equ l goto remover
if %opcaoremovertype% GEQ 0 goto removertype

:remover
if exist Server.bat ( echo Removendo... ) else (
  msg * O Arquivo Server.bat nao foi encontrado porfavor instale primeiro antes de usar essa opcao.
  goto menu
)
if %opcaoremovertype% equ l set opcao= Limpa
if %opcaoremovertype% equ L set opcao= Limpa
if %opcaoremovertype% equ Limpa set opcao= Limpa
if %opcaoremovertype% equ limpa set opcao= Limpa

title Minecraft Server Menu Instaler / Unistalling...
cls
attrib -H crash-reports
attrib -H versionidlocal.txt
attrib -H logs

del "Server.bat"
del "Ebaa.txt"
del "versionidlocal.txt"
del "whitelist.json"
del "usercache.json"
del "server.properties"
del "ops.json"
del "eula.txt"
del "banned-players.json"
del "banned-ips.json"
@RD /s /q "Server"
@RD /s /q "logs"
@RD /s /q "crash-reports"
@RD /s /q "Client"
if %opcao% equ Limpa ( @RD /s /q "backups" )
if %opcao% equ Limpa ( del "server.jar" )
if %opcao% equ Limpa ( del "LICENSE.txt" )
if %opcao% equ Limpa ( @RD /s /q "world" )
if %opcao% equ Limpa ( @RD /s /q "Backup" )
cls
echo Removeds:
call :colorEcho 04 "[Removed] "
echo : Server.bat [File]
call :colorEcho 04 "[Removed] "
echo : Server\ [Folder]
call :colorEcho 04 "[Removed] "
echo : versionidlocal.txt [File]
call :colorEcho 04 "[Removed] "
echo : whitelist.json [File]
call :colorEcho 04 "[Removed] "
echo : usercache.json [File]
call :colorEcho 04 "[Removed] "
echo : server.properties [File]
call :colorEcho 04 "[Removed] "
echo : logs\ [Folder]
call :colorEcho 04 "[Removed] "
echo : crash-reports\ [Folder]
call :colorEcho 04 "[Removed] "
echo : Client\ [Folder]
call :colorEcho 04 "[Removed] "
echo : ops.json [File]
call :colorEcho 04 "[Removed] "
echo : eula.txt [File]
call :colorEcho 04 "[Removed] "
echo : banned-ips.json [File]
call :colorEcho 04 "[Removed] "
echo : banned-players.json [File]
if %opcao% equ Limpa (
call :colorEcho 04 "[Removed] "
echo : world\ [Folder]
)
if %opcao% equ Limpa (
call :colorEcho 04 "[Removed] "
echo : backups\ [Folder]
)
if %opcao% equ Limpa (
call :colorEcho 04 "[Removed] "
echo : server.jar [File]
)
call :colorEcho 03 "[Ended] "
echo : Stoping...
call :colorEcho 03 "[Log] "
if %opcao% equ Limpa (
echo : Tudo foi removido.
) else ( 
echo : Tudo foi removido menos os arquivos word, server.jar, backups, LICENSE, Minecraft_Server_Menu_Instaler.bat se quizer salva-lo
)
call :colorEcho 03 "[Log] "
echo : aperte qualquer coisa para voutar ao menu...
title Minecraft Server Menu Instaler / Unistalling / Ended
pause > nul
cls
goto menu

:colorEcho
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i
