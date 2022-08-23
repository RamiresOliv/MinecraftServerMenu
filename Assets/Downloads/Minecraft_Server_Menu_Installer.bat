@echo off
SET mypath=%cd%

md "Installer"
md "Installer\Logs"
md "Installer\Logs\cache"
md "Installer\Logs\job"

cls
echo Inicializando...
echo compactando arquivos LOGS
if exist "Installer\Logs\latest.log" (
  powershell Compress-Archive -Path %mypath%\Installer\Logs\latest.log -DestinationPath %mypath%\Installer\Logs\cache\%random%-Log_latest.zip > nul
  if exist Atualizador_TEMP_FILE.bat ( echo. ) else del Installer\Logs\latest.log
  del Installer\Logs\job\logsreadytozip.temp
) else (
  echo [%date%-%time%][LOG/STARTED/NEW]: Minecraft_Server_Menu_Instaler Logs > Installer\Logs\latest.log
)

:menu
title Minecraft Server Menu Instaler
cls
if exist Atualizador_TEMP_FILE.bat (
  echo codex; %random%-%random%-%random%-%random%-%random%-%random%-%random%-%random%-%random%-%random%-%random%> "Installer\Logs\job\logsreadytozip.temp"
  attrib -H Atualizador_TEMP_FILE.bat
  del "Atualizador_TEMP_FILE.bat"
  echo [WARN]: um tipo de programa redirecionou voce para o menu novamente provavelmente foi a atualizacao ou outra coisa.
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
msg * Desculpe mas nao foi possivel conectar com o servidor do site porfavor tente novamente mais tarde ouverifique ou sua rede wifi.
echo. >> "Installer\Logs\latest.log"
echo [%date%-%time%] [WIFI ERROR/Installation]: tentativa falha ao tentar conectar com o website... >> "Installer\Logs\latest.log"
goto menu
)
if exist Server.bat (
echo.
echo. >> "Installer\Logs\latest.log"
echo [%date%-%time%] [Installation]: tentativa falha ao tentar instalar os aquivos pois o arquivo Server.bat ja exist é nessesario remove-lo para continuar... >> "Installer\Logs\latest.log"
msg * Um problema aconteceu: Parece que o arquivo Server.bat ja existe para atualizar ele primeiro remova-o!
goto menu
) else (
echo. >> "Installer\Logs\latest.log"
echo INSTALAÇÃO DOS PROGRAMAS: [feito em %time%]>> "Installer\Logs\latest.log"
echo codex; %random%-%random%-%random%-%random%-%random%-%random%-%random%-%random%-%random%-%random%-%random%> "Installer\Logs\job\logsreadytozip.temp"
echo Iniciando Download...
timeout /t 2 /nobreak > nul
cls
echo Fazendo Download..
echo Isso pode demorar um pouco.
echo voce sabia que esse sistema de download foi criado para ajudar na hora da atualizacao porque, e so voce remover o Server.bat e voutar aqui sabia?
echo.
if exist "Server" (
  echo [INESPERADO]: A pasta 'Server' Já existe.
) else (
  md "Server"
  echo [DONE]: A pasta 'Server' Foi Criada.
)
if exist "Client" (
  echo [INESPERADO]: A pasta 'Client' Já existe.
) else (
  md "Client"
  echo [DONE]: A pasta 'Client' Foi Criada.
)
echo.
echo [LOG]:
echo [%date%-%time%] [EM FILA]: iniciando download de LICENSE >> "Installer\Logs\latest.log"
echo [EM FILA]: iniciando download de LICENSE
bitsadmin.exe /transfer "LICENSE" https://raw.githubusercontent.com/gabrielramires/MinecraftServerMenu/master/LICENSE %mypath%\LICENSE > nul
if exist LICENSE (
echo [%date%-%time%] [DONE]: LICENSE instalado >> "Installer\Logs\latest.log"
echo [DONE]: LICENSE instalado
) else (
echo [%date%-%time%] [FATAL ERROR]: Ocorreu um erro ao instalar a LICENSE tente novamente mais tarde! [FORMAS DE RECUPERAÇÃO FEITAS MANUALMENTE: EM CASO DE ERRROS NA INSTALAÇÃO DE PROGRAMAS TENTE RENOMEAR O DIRETORIO PAI] >> "Installer\Logs\latest.log"
echo [FATAL ERROR]: Ocorreu um erro ao instalar a LICENSE tente novamente mais tarde! 
)
echo [%date%-%time%] [EM FILA]: iniciando download de pacote de versoes... >> "Installer\Logs\latest.log"
echo [EM FILA]: iniciando download de pacote de versoes...
bitsadmin.exe /transfer "Menu id" https://raw.githubusercontent.com/RamiresOliv/MinecraftServerMenu/Files/version.txt %mypath%\versionidlocal.txt > nul
if exist versionidlocal.txt (
attrib +H versionidlocal.txt
echo [%date%-%time%] [DONE]: pacote de versoes instalado >> "Installer\Logs\latest.log"
echo [DONE]: pacote de versoes instalado
) else (
echo [%date%-%time%] [FATAL ERROR]: Ocorreu um erro ao instalar a versionidlocal.txt tente novamente mais tarde! [FORMAS DE RECUPERAÇÃO FEITAS MANUALMENTE: EM CASO DE ERRROS NA INSTALAÇÃO DE PROGRAMAS TENTE RENOMEAR O DIRETORIO PAI] >> "Installer\Logs\latest.log"
echo [FATAL ERROR]: Ocorreu um erro ao instalar a versionidlocal.txt tente novamente mais tarde! 
)
echo [%date%-%time%] [EM FILA]: iniciando download de Server.bat >> "Installer\Logs\latest.log"
echo [EM FILA]: iniciando download de Server.bat
bitsadmin.exe /transfer "Server.bat" https://raw.githubusercontent.com/gabrielramires/MinecraftServerMenu/Website/Assets/Downloads/Minecraft_Java_Server.bat %mypath%\Server.bat > nul
if exist Server.bat (
echo [%date%-%time%] [DONE]: Server.bat instalado >> "Installer\Logs\latest.log"
echo [DONE]: Server.bat instalado
) else ( 
echo [%date%-%time%] [FATAL ERROR]: Ocorreu um erro ao instalar a Server.bat tente novamente mais tarde! [FORMAS DE RECUPERAÇÃO FEITAS MANUALMENTE: EM CASO DE ERRROS NA INSTALAÇÃO DE PROGRAMAS TENTE RENOMEAR O DIRETORIO PAI] >> "Installer\Logs\latest.log"
echo [FATAL ERROR]: Ocorreu um erro ao instalar a Server.bat tente novamente mais tarde! 
)
echo [HTTPS]: conectando...
timeout /t 2 /nobreak > nul
echo [DONE]: Done.
echo [LOG]: Incrivel!
echo [WARN]: Oops, ocorreu algum erro inesperado? va ate a pasta Installer e abra os Logs para ver os registros [NESSE BAT AS FUNCOES SAO GRAVADAS EM ARQUIVOS LOGS]
echo.
echo [LOG]: Tudo certo verifique se tudo foi instalado corretamente agora e so executar um arquivo com o nome de Server.bat
echo [LOG]: Lembre-se: se voce estiver com duvidas de updates e so voutar para a pagina principal do Bat istalador e apertar "a" ele ira te mostrar se a alguma atualizacao pendente.
echo [LOG]: aperte qualquer coisa para voltar...
title Minecraft Server Menu Instaler / Download / Ended
pause > nul
cls
goto menu
)

:atualizacao
echo. >> "Installer\Logs\latest.log"
echo ATUALIZADOR RUNNED [feito em %time%] >> "Installer\Logs\latest.log"
echo [%date%-%time%] [ATUALIZADOR/STARTED]: Runned Atualizador... >> "Installer\Logs\latest.log"
echo. >> "Installer\Logs\latest.log"
title Minecraft Server Menu Instaler / Update Verify...
Ping www.google.nl -n 1 -w 1000
if errorlevel 1 (set internet=false) else (set internet=true)
if %internet% == false (
msg * Desculpe mas nao foi possivel conectar com o servidor do site porfavor tente novamente mais tarde ouverifique ou sua rede wifi.
echo. >> "Installer\Logs\latest.log"
echo [%date%-%time%] [WIFI ERROR/Atualizador]: tentativa falha ao tentar conectar com o website... >> "Installer\Logs\latest.log"
goto menu
)
if exist Server.bat (
echo.
) else (
echo [%date%-%time%] [ATUALIZADOR/ENDED]: Runned Ended Motive: Porfavor faca Download do Server.bat primeiro antes de atualizar! >> "Installer\Logs\latest.log"
msg * Porfavor faca Download do Server.bat primeiro antes de atualizar!
goto menu
)
if exist "versionidlocal.txt" ( echo. ) else (
  msg * [FATAL ERROR]: arquivo de atualizacao conhecido como "versionidlocal.txt" foi removido ou renomeado!
  msg * recriando arquivo...
  cls
  echo Re-criando "versionidlocal.txt"
  bitsadmin.exe /transfer "version_verify" https://raw.githubusercontent.com/RamiresOliv/MinecraftServerMenu/Files/version.txt %mypath%\versionidlocal.txt > nul
  echo end.
  msg * [DONE]: file re-istalada
  goto menu
)
cls
echo um momento...
echo lembre-se isso pode demorar um pouco...
bitsadmin.exe /transfer "version_verify" https://raw.githubusercontent.com/RamiresOliv/MinecraftServerMenu/Files/version.txt %mypath%\VersionId.txt > nul
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
goto naopendente
) else goto pendente

:naopendente
echo [%date%-%time%] [ATUALIZADOR/ENDED]: Runned Ended Motive: Tudo certo nao a nenhuma atualizacao pendente! [VERSION ID DETECTED IN THE GITHUB REPOSITORY: %LocalVersionId%]>> "Installer\Logs\latest.log"
title Minecraft Server Menu Instaler / Update Verify... / Ended
echo Tudo certo nao a nenhuma atualizacao pendente!
echo aperte qualquer coisa para voltar...
pause > nul
goto menu

:pendente
echo [%date%-%time%] [ATUALIZADOR/WAITING...]: achamos uma atualizacao pendente! [WATING THE PERMITION] [VERSION ID DETECTED IN THE GITHUB REPOSITORY: %LocalVersionId%]>> "Installer\Logs\latest.log"
del "VersionId.txt"
attrib +H versionidlocal.txt
cls
echo achamos uma atualizacao pendente!
echo ID da nova atualizacao: %WebVersionId%
echo deseja comecar a instalacao?
set /p opcao= N/S : 

if %opcao% equ s goto comecaratualizacao
if %opcao% equ S goto comecaratualizacao

if %opcao% equ n (
  echo [%date%-%time%] [ATUALIZADOR/ENDED]: %username% cancel the atualiacao [RETURNED TO MENU]>> "Installer\Logs\latest.log"
  goto menu
)
if %opcao% equ N (
  echo [%date%-%time%] [ATUALIZADOR/ENDED]: %username% cancel the atualiacao [RETURNED TO MENU]>> "Installer\Logs\latest.log"
  goto menu
)

if %opcao% GEQ 0 goto pendente

:comecaratualizacao
echo [%date%-%time%] [ATUALIZADOR/ACCEPTED]: %username% accepepted the atualiacao [STARTING ATUALIZADOR MODULE]>> "Installer\Logs\latest.log"
title Minecraft Server Menu Instaler / Update Verify / Updating...
cls
echo porfavor espere estamos fazendo preparando a atualizacao...
echo (seja paciente pode demorar)
bitsadmin.exe /transfer "Instaler" https://raw.githubusercontent.com/RamiresOliv/MinecraftServerMenu/Files/Downloads/Atualizador.bat %mypath%\Atualizador_TEMP_FILE.bat > nul
attrib +H Atualizador_TEMP_FILE.bat
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
  echo [%date%-%time%] [REMOVER]: O Arquivo Server.bat nao foi encontrado porfavor instale primeiro antes de usar essa opcao. >> "Installer\Logs\latest.log"
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
echo [Removed]: Server.bat [File]
echo [Removed]: Server\ [Folder]
echo [Removed]: versionidlocal.txt [File]
echo [Removed]: whitelist.json [File]
echo [Removed]: usercache.json [File]
echo [Removed]: server.properties [File]
echo [Removed]: logs\ [Folder]
echo [Removed]: crash-reports\ [Folder]
echo [Removed]: Client\ [Folder]
echo [Removed]: ops.json [File]
echo [Removed]: eula.txt [File]
echo [Removed]: banned-ips.json [File]
echo [Removed]: banned-players.json [File]
if %opcao% equ Limpa (
echo [Removed/ALERT]: world\ [Folder]
)
if %opcao% equ Limpa (
call :colorEcho 04 "[Removed] "
echo [Removed/ALERT]: backups\ [Folder]
)
if %opcao% equ Limpa (
echo [Removed/ALERT]: server.jar [File]
)
echo [Ended]: Stoping...
if %opcao% equ Limpa (
echo [Log]: Tudo foi removido.
) else ( 
echo [Log]: Tudo foi removido menos os arquivos word, server.jar, backups, LICENSE, Minecraft_Server_Menu_Instaler.bat se quizer salva-lo
)
echo [Log]: aperte qualquer coisa para voutar ao menu...
title Minecraft Server Menu Instaler / Unistalling / Ended
pause > nul
cls
goto menu

:colorEcho
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i
