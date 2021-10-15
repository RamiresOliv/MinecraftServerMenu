@echo off
:inicializadorprimario
title Iniciando...
set data=%date:/=-%
set hora=%time:~0,2%-%time:~3,2%
set /p datainfos=<Client\data\projectname.key

:verify
if exist server.jar (

"C:\Program Files\WinRar\Rar.exe" a "Client\Logs\%data%_%random%.gz" "Client\Logs\latest.log" > nul

md "Client"
md "Client\Logs"
echo Olá! esse arquivo é usado para falar notas> Client\Logs\NOREMOVEME.txt
echo Essa Pasta estará todos os aquivos de logs de seu Menu.>> Client\Logs\NOREMOVEME.txt
md "Client\Data"

md "Server"
md "Server\Data"
md "Server\Logs"
echo Olá! esse arquivo é usado para falar notas> Server\Logs\NOREMOVEME.txt
echo Essa Pasta estará todos os aquivos de logs de seu servidor.>> Server\Logs\NOREMOVEME.txt
md "Server\forge_versions_ids"

md logs
attrib +H logs
move "logs\*.*" "Server\Logs"
"C:\Program Files\WinRar\Rar.exe" a "Server\Logs\%data%.log.gz" "Server\Logs\latest.log" > nul

if exist Client\Data\ReplaceData.key (
     echo idk 
) else (
    echo Disabled> Client\Data\ReplaceData.key
)


echo alerta: Atualmente não existente > Server\eula-status.txt


if exist "eula.txt" (
    echo Eula existente Debug: idle-N/A > Server\eula-status.txt
    echo starting
    goto startverifys

    ) else (
        md Client\Errors
        start server.jar
        msg * O arquivo eula.txt nao existe mas acabamos de fazer um para voce! (recomendado: voce verificar a eula agora antes de ligar o servidor va para a pasta onde esta o servidor e aceite a eula que essta localizada em um arquivo eula.txt)
        echo ERRO: Eula.txt nÃ£o existe mas foi recriada mas, %username% foi lembrado "https://account.mojang.com/documents/minecraft_eula" > Client\Errors\Eula_Error[%random%]%data%.error.txt
        goto conectando
    )

) else (
     start https://www.minecraft.net/pt-br/download/server
     msg * arquivo principal nao encontrado porfavor renomeie para server.jar
     exit
)



:startverifys
echo Verifys:
        if exist Client\data\projectname.key (
            echo projectname.key
        ) else (
		echo Meu Server de Minecraft! > Client\data\projectname.key

	            msg * Ocorreu um erro: o server foi obrigado a desligar pelo seguinte motivo: No comeco da instalacao e obrigatario a renicializacao para que evite alguns erros de Data
		        msg * essa mensagem  so ira aparecer uma vez esse erro e so mente para avisar nao e preciso alteracoes em script e outros
		        start Server.bat

                echo Todos os arquivos foram Instalados agora e so comecar a usar! > Ebaa.txt
		        echo Muito Obrigado por instalar nosso Script %username%!! com amor Ramires Oliv >> Ebaa.txt
		        echo. >> Ebaa.txt
		        echo nota: este arquivo .txt sera removido ao executar o script novamente se preferir você mesmo pode ir remove-lo >> Ebaa.txt
		        start Ebaa.txt
		        exit
        )

        :versionnumverify
            if exist Server\Data\versionnum.key (
                echo versionnum.key
            ) else (
                echo *> Server\Data\versionnum.key
                goto versionbukkitvrify
            )

        :versionbukkitvrify
            if exist Server\Data\versionbukkit.key (
                echo versionbukkit.key
            ) else (
                echo desativado > Server\Data\versionbukkit.key
                goto versionnameverify
            )
        :versionnameverify
		    if exist Ebaa.txt ( del "Ebaa.txt" )
            if exist Server\Data\versionname.key (
                echo versionname.key
            ) else (
                echo vanila> Server\Data\versionname.key
            )
        :versaoinit
            if exist Server\Data\versioninit.key (
                echo versioninit.key
                ) else (
                    echo server.jar> Server\Data\versioninit.key
                )
:conectando
echo NOT BY MOJANG! > LICENSE
echo MINECRAFT SERVER MENU LICENSE! >> LICENSE
echo. >> LICENSE
echo Copyright (c) 2021 Gabriel Ramires Oliv >> LICENSE
echo.  >> LICENSE
echo  Permission is hereby granted, free of charge, to any person obtaining a copy >> LICENSE
echo  of this software and associated documentation files (the "Software"), to deal >> LICENSE
echo  in the Software without restriction, including without limitation the rights >> LICENSE
echo  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell >> LICENSE
echo  copies of the Software, and to permit persons to whom the Software is >> LICENSE
echo  furnished to do so, subject to the following conditions: >> LICENSE
echo. >> LICENSE
echo  The above copyright notice and this permission notice shall be included in >> LICENSE
echo  all copies or substantial portions of the Software. >> LICENSE
echo. >> LICENSE
echo  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR >> LICENSE
echo  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, >> LICENSE
echo  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE >> LICENSE
echo  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER >> LICENSE
echo  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, >> LICENSE
echo  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN >> LICENSE
echo  THE SOFTWARE. >> LICENSE

cls
echo conectando o terminal...
echo conectando server.jar...
echo porfavor espere.
echo.
echo                     preparando cafe...
timeout /t 3 /nobreak > nul
cls
echo conectando o terminal...
echo conectando server.jar...
echo porfavor espere..
echo.
echo                     ligando para a mojang...
timeout /t 2 /nobreak > nul
cls
echo conectando o terminal...
echo conectando server.jar...
echo porfavor espere...
echo.
echo                     malhando...
timeout /t 2 /nobreak > nul
cls
echo conectando o terminal...
echo conectando server.jar...
echo porfavor espere....
echo.
echo                     verificando a eula...
timeout /t 3 /nobreak > nul
cls
echo conectando o terminal...
echo conectando server.jar...
echo porfavor espere.....
echo.
echo                     olhando pela janela...
timeout /t 2 /nobreak > nul
cls
echo conectando o terminal...
echo conectando server.jar...
echo porfavor espere......
echo.
echo                     ligando as luzes
timeout /t 2 /nobreak > nul
cls
echo conectando o terminal...
echo conectando server.jar...
echo porfavor espere.......
echo.
echo                     preparando (999...)
timeout /t 2 /nobreak > nul
cls
echo iniciando menu ;)
timeout /t 3 /nobreak > nul
goto concordar

:concordar
cls
color a
echo                                  Ola %username% poderia concordar com augumas coisas?
echo.
echo Saiba que caso voce saia do terminal seu save nao sera salvo em seu pc
echo voce concordara com os termos da eula? veja mais em: (https://account.mojang.com/documents/minecraft_eula)
echo para continuar aperte qualquer tecla (apertando qualquer tecla voce concordara com tudo isso).
timeout /t 15 > nul
goto menu

:menu
move logs\*.* Server\Logs
"C:\Program Files\WinRar\Rar.exe" a "Server\Logs\%data%.log.gz" "Server\Logs\latest.log" > nul
set /p versaoatual=<Server\Data\versionname.key
set /p versaonumatual=<Server\Data\versionnum.key
set serverversion= %versaoatual%%versaonumatual%
set /p name=<Client\data\projectname.key
title Minecraft Server Launcher %name%
cls
color 7
echo                         %name%
echo.
echo ==================================
echo * start. Iniciar o Servidor.      *
echo * backup. Fazer uma copia do mapa *
echo * credits. Ver Creditos           *
echo * rename. Tenomear projeto        *
echo * version. Troca a versao do menu *
echo * leave. Sair do Menu.            *
echo ==================================
echo server version:%serverversion%
echo menu version: 1.5
echo By Gabriel Ramires
echo.
set /p opcao= digite a opcao:

: encurtador
if %opcao% equ s goto iniciarcerteza
if %opcao% equ b goto backup
if %opcao% equ c goto creditos
if %opcao% equ r goto renameproject
if %opcao% equ v goto versionmenu
if %opcao% equ l goto saircerteza

: nomes
if %opcao% equ start goto iniciarcerteza
if %opcao% equ backup goto backup
if %opcao% equ credits goto creditos
if %opcao% equ rename goto renameproject
if %opcao% equ version goto versionmenu
if %opcao% equ leave goto saircerteza

: error opcao nao existe
if %opcao% GEQ 0 goto menu

: debug
if %opcao% equ restart goto inicializadorprimario

:versionmenu
set /p versaoatual=<Server\Data\versionname.key
set /p versaonumatual=<Server\Data\versionnum.key
cls
echo versao atual: %versaoatual%%versaonumatual%
echo.
echo essa opcao e para trocar a versao do inicializador do menu
echo caso voce tenha o forge em uma versao especifica voce pode trocar!
echo.
echo ===============================================================================================
echo * addforge. adicionar suporte para forge (qualquer versao)                                     *
echo * addbukkit. adicionar suporte para plugins (caso seja selecionada nao tera como ativar mods.) *
echo * removebukkit. remover o suporte para plugins                                                 *
echo * removeforge. remover o suporte para forge (ira voutar para Vanila)                           *
echo * renameversion. renomeara a versao tanto para valina e forge                                  *
echo * back. voutar ao menu                                                                         *
echo ===============================================================================================

set /p opcao= digite a opcao:

if %opcao% equ af goto addforge
if %opcao% equ ab goto addbukkit
if %opcao% equ rb goto removebukkit
if %opcao% equ rf goto removeforge
if %opcao% equ rv goto renameversion
if %opcao% equ b goto menu
if %opcao% equ addforge goto addforge
if %opcao% equ addbukkit goto addbukkit
if %opcao% equ removebukkit goto removebukkit
if %opcao% equ removeforge goto removeforge
if %opcao% equ renameversion goto renameversion
if %opcao% equ back goto menu
if %opcao% GEQ 0 goto versionmenu


:addbukkit
cls
echo deseja ativar o suporte com bukkit?
set /p AoN= N/S: 

if %AoN% equ s goto ativarbukkit
if %AoN% equ n goto versionmenu
if %AoN% GEQ 0 goto addbukkit

:ativarbukkit
cls
echo ativando...
timeout /t 3 /nobreak > nul
echo ativado > Server\Data\versionbukkit.key
cls
echo ativado.
echo aperte qualquer coisa para voutar
pause > nul
goto versionmenu

:removebukkit
set /p bukkitstatus=<Server\Data\versionbukkit.key
echo a
if %bukkitstatus% == ativado (
    cls
    echo desativando...
    timeout /t 3 /nobreak > nul
    cls
    echo desativado > Server\Data\bukkit.key
    echo desativado e redirecionando.
    timeout /t 3 /nobreak > nul
    goto versionmenu
) else if %bukkitstatus% == desativado (
    cls
    echo o bukkit esta desativado porfavor ative ele primeiro.
    pause
    goto versionmenu
) else (
    echo desativado > Server\Data\bukkit.key
    goto removebukkit
)


:addforge

setlocal enabledelayedexpansion

: lista atualizada em [02/06/2021]

echo Log: creat > Server\forge_versions_ids\Debug.txt
md Server\forge_versions_ids\data\recente

echo 37.0.70> Server\forge_versions_ids\data\recente\1.17.1.txt

echo 36.1.24> Server\forge_versions_ids\data\recente\1.16.5.txt
echo 35.1.4> Server\forge_versions_ids\data\recente\1.16.4.txt
echo 34.1.42> Server\forge_versions_ids\data\recente\1.16.3.txt
echo 33.0.61> Server\forge_versions_ids\data\recente\1.16.2.txt
echo 32.0.108> Server\forge_versions_ids\data\recente\1.16.1.txt

echo 31.2.50> Server\forge_versions_ids\data\recente\1.15.2.txt
echo 30.0.51> Server\forge_versions_ids\data\recente\1.15.1.txt
echo 29.0.4> Server\forge_versions_ids\data\recente\1.15.txt

echo 28.2.23> Server\forge_versions_ids\data\recente\1.14.4.txt
echo 27.0.60> Server\forge_versions_ids\data\recente\1.14.3.txt
echo 26.0.63> Server\forge_versions_ids\data\recente\1.14.2.txt

echo 25.0.219> Server\forge_versions_ids\data\recente\1.13.2.txt

echo 14.23.5.2855> Server\forge_versions_ids\data\recente\1.12.2.txt
echo 14.22.1.2485> Server\forge_versions_ids\data\recente\1.12.1.txt
echo 14.21.1.2443> Server\forge_versions_ids\data\recente\1.12.txt

echo 13.20.1.2588> Server\forge_versions_ids\data\recente\1.11.2.txt
echo 13.19.1.2199> Server\forge_versions_ids\data\recente\1.11.txt

echo 12.18.3.2511> Server\forge_versions_ids\data\recente\1.10.2.txt

echo 12.18.0.2000> Server\forge_versions_ids\data\recente\1.10.txt

echo 12.17.0.2317> Server\forge_versions_ids\data\recente\1.9.4.txt
echo 12.16.1.1938> Server\forge_versions_ids\data\recente\1.9.txt

echo 11.15.1.2318> Server\forge_versions_ids\data\recente\1.8.9.txt
echo 11.15.0.1655> Server\forge_versions_ids\data\recente\1.8.8.txt
echo 11.14.4.1577> Server\forge_versions_ids\data\recente\1.8.txt




md Server\forge_versions_ids\data\recomendado

echo 37.0.70> Server\forge_versions_ids\data\recomendado\1.17.1.txt

echo 36.1.0> Server\forge_versions_ids\data\recomendado\1.16.5.txt
echo 35.1.37> Server\forge_versions_ids\data\recomendado\1.16.4.txt
echo 34.1.0> Server\forge_versions_ids\data\recomendado\1.16.3.txt

echo 31.2.0> Server\forge_versions_ids\data\recomendado\1.15.2.txt

echo 28.2.0> Server\forge_versions_ids\data\recomendado\1.14.4.txt

echo 14.23.5.2855> Server\forge_versions_ids\data\recomendado\1.12.2.txt
echo 14.22.1.2478> Server\forge_versions_ids\data\recomendado\1.12.1.txt
echo 14.21.1.2387> Server\forge_versions_ids\data\recomendado\1.12.txt

echo 13.20.1.2588> Server\forge_versions_ids\data\recomendado\1.11.2.txt
echo 13.19.1.2189> Server\forge_versions_ids\data\recomendado\1.11.txt

echo 12.18.3.2511> Server\forge_versions_ids\data\recomendado\1.10.2.txt

echo 12.17.0.2317> Server\forge_versions_ids\data\recomendado\1.9.4.txt
echo 12.16.1.1887> Server\forge_versions_ids\data\recomendado\1.9.txt

echo 11.15.1.2318> Server\forge_versions_ids\data\recomendado\1.8.9.txt
echo 11.14.4.1563> Server\forge_versions_ids\data\recomendado\1.8.txt



set /p initname=<Server\data\versaoinit.key
set /p versionnum=<Server\Data\versionnum.key
cls
echo porfavor espere...
echo estamos conectando conecsoes de muuuuuuuuuuuuuito longe.....
timeout /t 5 /nobreak > nul
echo forge> Server\Data\versionname.key
goto afav
:afav
cls
echo coloque agora uma versao para o forge que voce esta usando. Exemplo: "1.17" (depois voce podera atualizar essa opcao)
set /p versionnumadd= digite a versao:
echo -%versionnumadd%> Server/Data/versionnum.key
goto rorrv

:rorrv
cls
echo reta final! digite o tipo da veresao do forge. Exemplo: "recomendado" ou "recente".
set /p rorr= digite a versao:
if %rorr% equ recomendado goto recomendadoversion
if %rorr% equ recente goto recenteversion
if %rorr% GEQ 0 goto aferrorrorr

:recomendadoversion
if exist Server\forge_versions_ids\data\recomendado\!versionnumadd!.txt (
    set /p vnvrm=<Server\forge_versions_ids\data\recomendado\!versionnumadd!.txt
    echo forge> Server\Data\versionname.key
    echo forge-!versionnumadd!-!vnvrm!.jar> Server\data\versioninit.key
    echo !vnvrm!, !versionnumadd!
    pause > nul
    goto afend
) else (
    goto aferrorrorr
)

:aferrorrorr
cls
echo Oops :( nao foi posivel achar essa versao! tente:
echo caso voce colocou a "versao recomendado" tente colocar "versao recente"
echo se nao uma dessas opcoes esta versao nao existe ou foi nomeada incorretamente!
pause 
goto rorrv

:aferrorv
cls
echo Oops :( nao foi posivel achar essa versao! tente:
echo caso voce colocou a "versao recomendado" tente colocar "versao recente"
echo se nao uma dessas opcoes esta versao nao existe ou foi nomeada incorretamente!
pause 
goto afav

:recenteversion
if exist Server\forge_versions_ids\data\recente\!versionnumadd!.txt (
    set /p vnvr=<Server\forge_versions_ids\data\recente\!versionnumadd!.txt
    echo forge> Server\Data\versionname.key
    echo forge-!versionnumadd!-!vnvr!.jar> Server\data\versioninit.key
    echo !vnvr!, !versionnumadd!
    pause > nul
    goto afend
) else (
    goto aferrorv
)

:afend
cls
echo quase la! espere...
timeout /t 5 /nobreak > nul
cls
echo pronto! terminado e redirecionando.
timeout /t 3 /nobreak > nul
goto versionmenu

:removeforge
cls
echo ok.. estamos desativando os carros e outras coisas do muuuuuuuuuuuuuuuito longe.
echo e voutando para casa...
timeout /t 8 /nobreak > nul
echo vanila> Server\Data\versionname.key
echo *> Server\Data\versionnum.key
echo server.jar> Server\Data\versioninit.key
goto versionmenu

:renameversion
set /p versaoatual=<Server\Data\versionname.key
if %versaoatual% == forge ( goto renameversionstart ) else (
    cls
    color a
    echo sabia que na versao vanila oque vale e a versao que esta no server.jar?
    echo entao quando estiver na versao vanila voce nao presisa mudar de versao.
    echo.
    echo aperte qualquer coisa para voutar para o menu de versoes...
    pause > nul
    color 7
    goto versionmenu
)

:renameversionstart
set /p versaoatual=<Server\Data\versionname.key
cls
echo usuario usando: %versaoatual%.
echo porfavor espere...
timeout /t 3 /nobreak > nul
if %versaoatual% == forge (
cls
echo usuario usando: %versaoatual%.
echo para colocar o numero da sua versao coloque tipo assim exemplo: "1.17"
echo * caso digite errado o programa NAO ira se inicializar!! *
set /p rvv= digite a versao:
cls
echo -%rvv% > Server/Data/versionnum.key

echo reta final! digite o tipo da veresao do forge. Exemplo: "recomendado" ou "recente".
set /p rorr= digite a versao:
if %rorr% equ recomendado goto renameversionrecomendado
if %rorr% equ recente goto renameversionrecente
if %rorr% GEQ 0 goto renameversion

:renameversionrecomendado
if exist Server\forge_versions_ids\data\recomendado\!rvv!.txt (
    set /p rvvnvr=<Server\forge_versions_ids\data\recomendado\!rvv!.txt
    echo forge> Server\Data\versionname.key
    echo forge-!rvv!-!rvvnvr!.jar> Server\data\versioninit.key
    echo DEBUG: tipo de versao selecionada: !rvvnvrt!, !rvv!
    echo [DEBUG/ID-%random%]: tipo de versao selecionada: !rvvnvrt!, !rvv! >> Server\forge_versions_ids\Debug.txt
    pause > nul
    goto afend
) else (
    echo Oops, versao nao encontrada no tipo recente...
    pause
    goto renameversion
)

:renameversionrecente
if exist Server\forge_versions_ids\data\recente\!rvv!.txt (
    set /p rvvnvrt=<Server\forge_versions_ids\data\recente\!rvv!.txt
    echo forge> Server\Data\versionname.key
    echo forge-!rvv!-!rvvnvrt!.jar> Server\data\versioninit.key
    echo DEBUG: tipo de versao selecionada: !rvvnvrt!, !rvv!
    echo [DEBUG/ID-%random%]: tipo de versao selecionada: !rvvnvrt!, !rvv! >> Server\forge_versions_ids\Debug.txt
    pause > nul
    goto afend
) else (
    echo Oops, versao nao encontrada no tipo recente...
    pause
    goto renameversion
)



:rvend
cls
echo renomeando a versao...
timeout /t 3 /nobreak > nul
echo pronto estamos te redirecionando de vouta aguenta ai!!
timeout /t 3 /nobreak > nul
goto versionmenu


) else (
    if %versaoatual% == vanila (
        cls
        echo usuario usando: %versaoatual%.
        echo para colocar o numero da sua versao coloque tipo assim exemplo: "1.16.5"
        echo * caso digite errado o programa NAO ira se inicializar!! *
        set /p rvvv= digite a versao:
        echo %rvvv% > Server/Data/versionnum.key
        echo renomeando a versao...
        timeout /t 3 /nobreak > nul
        echo pronto estamos te redirecionando de vouta aguenta ai!!
        timeout /t 3 /nobreak > nul
        goto versionmenu
    ) else (
        msg * error in renameversion
        goto renameversion
    )
)

endlocal



:renameproject
cls
set /p name=<Client\data\projectname.key
echo para renomear o projeto digite abaixo o nome:
set /p projectrename= digite a opcao:
echo %projectrename% > Client\data\projectname.key
msg * o nome do seu projeto foi renomeado com sucesso!
goto menu

:backup
set /p name=<Client\data\projectname.key
title Minecraft Server Launcher %name% Backup
if exist "C:\Program Files\WinRar" (
if exist "Backups" (
if exist "world" (
cls
set data=%date:/=-%
set hora=%time:~0,2%-%time:~3,2%
echo em progreso...
"C:\Program Files\WinRar\Rar.exe" a "Backups\World_%data%_.gz" "world\*.*" > nul
"C:\Program Files\WinRar\Rar.exe" a "Backups\World_%data%_.gz" "world\data\*.*" > nul
"C:\Program Files\WinRar\Rar.exe" a "Backups\World_%data%_.gz" "world\datapacks\*.*" > nul
"C:\Program Files\WinRar\Rar.exe" a "Backups\World_%data%_.gz" "world\DIM-1\*.*" > nul
"C:\Program Files\WinRar\Rar.exe" a "Backups\World_%data%_.gz" "world\DIM1\*.*" > nul
"C:\Program Files\WinRar\Rar.exe" a "Backups\World_%data%_.gz" "world\playerdata\*.*" > nul
"C:\Program Files\WinRar\Rar.exe" a "Backups\World_%data%_.gz" "world\poi\*.*" > nul
"C:\Program Files\WinRar\Rar.exe" a "Backups\World_%data%_.gz" "world\region\*.*" > nul
"C:\Program Files\WinRar\Rar.exe" a "Backups\World_%data%_.gz" "world\serverconfig\*.*" > nul
"C:\Program Files\WinRar\Rar.exe" a "Backups\World_%data%_.gz" "world\stats\*.*" > nul
cls
echo Concluido
echo backup criado na pasta "Backups"
echo aperte qualquer coisa para voutar
echo [%data%:%hora%] [MAIN/INFO/BACKUP]: Um backup foi criado na pasta "backups" >> Client\Logs\latest.log
timeout /t 10 > nul
goto menu
) else (
    md Client\Errors
    set data=%date:/=-%
    set hora=%time:~0,2%-%time:~3,2%
    echo [%data%/%hora%] [MAIN/BACKUP/INFO/ERROR]: Pasta World foi renomeada ou não existe >> Client\Errors\%data%_Backups_Error.txt
    echo Oops parece que a pasta world do seu mundo nÃ£o existe ou foi renomeada!
    pause
    goto menu
)
) else (
  :nohavebackupativado
    cls
    echo ola %username%! parece que voce e novo aqui e essa parte tambem e nova!
    echo agora voce pode salvar backups de seu mapa em uma pasta!
    echo deseja ativar essa opcao?
    set /p opcao= S/N :
    if %opcao% equ s goto backupativado
    if %opcao% equ n goto menu
    if %opcao% GEQ 0 goto nohavebackupativado

:backupativado
set data=%date:/=-%
set hora=%time:~0,2%-%time:~3,2%
echo [%data%:%hora%] [MAIN/INFO/BACKUP]: Sistema de backup foi ativado >> Client\Logs\latest.log

cls
echo ativando.
echo porfavor espere.
timeout /t 1 /nobreak > nul
cls
echo ativando..
echo porfavor espere.
timeout /t 1 /nobreak > nul
cls
echo ativando...
echo porfavor espere.
timeout /t 1 /nobreak > nul
cls
echo ativando..
echo porfavor espere.
timeout /t 1 /nobreak > nul
cls
echo ativando...
echo porfavor espere.
timeout /t 1 /nobreak > nul
cls
echo ativando..
echo porfavor espere.
timeout /t 1 /nobreak > nul
cls
echo ativando...
echo porfavor espere.
timeout /t 1 /nobreak > nul
md backups
msg * backup foi ativado volte para a opcao de backup para garantir seu Backup!
goto menu

)
) else (
    echo [%data%:%hora%] [MAIN/INFO/BACKUP/ERROR]: WinRAR nao foi instalado em seu pc! Porfavor garanta o download "https://www.win-rar.com/start.html?&L=0" >> Client\Errors\%data%_Backups_Error.txt
    echo Oops o WinRAR nÃ£o foi instalado porfavor instale o WinRAR para continuar 
    echo Porfavor garanta o download em: "https://www.win-rar.com/start.html?&L=0"
    pause > nul
    goto menu
)

:creditos
set /p name=<Client\data\projectname.key
title Minecraft Server Launcher %name% Creditos
cls
color b
echo BATS , Ramires Oliv (https://www.youtube.com/channel/UCL2ZrIjB4oQ5CVPu1nhT7Ew)
echo.
echo Sistema de faze funciona , Mojang (https://www.minecraft.net/pt-pt/)
echo.
echo LINGUAGE , Java (https://www.java.com/pt-BR/)
echo.
echo aperte qualquer coisa para voutar ao menu
pause > nul
goto menu

:iniciarcerteza
title Inicializando...
cls
color 6
echo                          tem CERTEZA que quer continuar %username%?
echo.
echo                                           dicas:
echo 1. Quando estiver no terminal digite "stop" para parar o servidor CORRETAMENTE e ele ira salvar o mundo.
echo 2. Em quanto estiver no terminal e nao digitou "save-all" e fechou o programa pode nao salvar o mundo!
echo 3. Digitando "help" no terminal mostrara mais comandos.
echo 4. Isso podera deixar seu computador um pouco mais lento. (Principalmente em um pc antigo)
echo 5. Em quanto estiver no terminal nao feixe-o porque alem de nao salvar o servidor ele ira cair.
echo.
echo                          aperte qualquer coisa para iniciar o server :3
pause > nul
set data=%date:/=-%
set hora=%time:~0,2%-%time:~3,2%

set /p bukkitstatus=<Server\Data\versionbukkit.key
set /p nameversionfov=<Server\Data\versionname.key
set /p startnamescript=<Server\Data\versioninit.key
set /p versionnum=<Server\Data\versionnum.key

:iniciarverifys
if %bukkitstatus% == ativado (
    goto evb
) else (
    if %nameversionfov% == forge (
        echo starting forge...
        goto evf
  ) else (
        if %nameversionfov% == vanila (
            echo starting vanila...
            goto iniciarvanila
        ) else (
            echo error ao achar a versao tipo de erro "incomun"
            pause > nul
            goto menu
        )
    )
)

:evb
    if exist craftbukkit-%versionnum%.jar ( goto iniciarbukkit ) else (
        msg * o forge com o nome craftbukkit-%versionnum% nao existe ou foi renomeado...
        goto menu
    )

:evf
    if exist %startnamescript% ( goto iniciarforge ) else (
        msg * o forge com o nome %startnamescript% nao existe ou foi renomeado...
        goto menu
    )

:iniciarbukkit
set /p versionnum=<Server\Data\versionnum.key
set /p startnamescript=<Server\Data\versioninit.key
set data=%date:/=-%
set hora=%time:~0,2%-%time:~3,2%
cls
color a
echo startando server...
echo timeout:
echo starting Minecraft.. /C\
timeout /t 5 /nobreak > nul
title Console Server Service Type: Bukkit
color 7
cls
echo [%data%/%hora%] [MAIN/START/INFO/BUKKIT]: Servidor Foi iniciado normalmente >> Client\Logs\latest.log
echo Console/Chat/Logs:
echo.
java -Xmx1024M -Xms1024M -jar craftbukkit-%versionnum%.jar nogui
goto gerenciamento

:iniciarforge
set /p startnamescript=<Server\Data\versioninit.key
set data=%date:/=-%
set hora=%time:~0,2%-%time:~3,2%
cls
color a
echo startando server...
echo timeout:
echo starting Minecraft.. /B\
timeout /t 5 /nobreak > nul
title Console Server Service Type: Forge
color 7
cls
echo [%data%/%hora%] [MAIN/START/INFO/FORGE]: Servidor Foi iniciado normalmente >> Client\Logs\latest.log
echo Console/Chat/Logs:
echo.
java -Xmx1024M -Xms1024M -jar %startnamescript% nogui
goto gerenciamento

:iniciarvanila
set data=%date:/=-%
set hora=%time:~0,2%-%time:~3,2%
cls
color a
echo startando server...
echo timeout:
echo starting Minecraft.. /A\
timeout /t 5 /nobreak > nul
title Console Server Service Type: Vanila
color 7
cls
echo [%data%/%hora%] [MAIN/START/INFO/VANILA]: Servidor Foi iniciado normalmente >> Client\Logs\latest.log
echo Console/Chat/Logs:
echo.
java -Xmx1024M -Xms1024M -jar server.jar nogui

:gerenciamento
echo [%data%/%hora%] [MAIN/START/INFO/VANILA]: Servidor Foi Parado >> Client\Logs\latest.log
echo Parando ... (auto save)
if exist backups (
"C:\Program Files\WinRar\Rar.exe" a "Backups\World_%data%.gz" "world\*.*" > nul
"C:\Program Files\WinRar\Rar.exe" a "Backups\World_%data%.gz" "world\data\*.*" > nul
"C:\Program Files\WinRar\Rar.exe" a "Backups\World_%data%.gz" "world\datapacks\*.*" > nul
"C:\Program Files\WinRar\Rar.exe" a "Backups\World_%data%.gz" "world\DIM-1\*.*" > nul
"C:\Program Files\WinRar\Rar.exe" a "Backups\World_%data%.gz" "world\DIM1\*.*" > nul
"C:\Program Files\WinRar\Rar.exe" a "Backups\World_%data%.gz" "world\playerdata\*.*" > nul
"C:\Program Files\WinRar\Rar.exe" a "Backups\World_%data%.gz" "world\poi\*.*" > nul
"C:\Program Files\WinRar\Rar.exe" a "Backups\World_%data%.gz" "world\region\*.*" > nul
"C:\Program Files\WinRar\Rar.exe" a "Backups\World_%data%.gz" "world\serverconfig\*.*" > nul
"C:\Program Files\WinRar\Rar.exe" a "Backups\World_%data%.gz" "world\stats\*.*" > nul
echo Saved on Backup folder
goto crashreportsserver
) else (
    goto crashreportsserver
)
:crashreportsserver
if exist "crash-reports" (
    md Server\Errors
    move crash-reports\*.* Server\Errors
    attrib +H crash-reports
    goto logsserver
) else (
  goto logsserver
)

:logsserver
if exist "logs" (
    md Server\Logs
    move logs\*.* Server\logs
    attrib +H logs
    "C:\Program Files\WinRar\Rar.exe" a "Server\Logs\%data%.log.gz" "Server\Logs\latest.log" > nul
    goto erro
) else (
    goto erro
)

:erro
set /p name=<Client\data\projectname.key
title Minecraft Server Launcher %name% Stop Server
cls
color 4
echo ERRO: servidor foi parado!!
echo.
echo pode ser um dos motivos:
echo.
echo %username% parou o processo.
echo ocorreu um erro no servidor
echo ou o servidor crashou
echo.
echo digite "R" ou "restart" para dar start novamente...
echo digite "N" ou "voutar" para voutar ao menu...
echo digite "E" ou "error" para ver o erro...
set /p opcao= R/N/E :

if %opcao% equ r goto iniciarverifys
if %opcao% equ n goto menu
if %opcao% equ e goto viewerror

if %opcao% equ voutar goto menu
if %opcao% equ restart goto iniciarverifys
if %opcao% equ error goto viewerror


if %opcao% GEQ 0 goto erro

:viewerror
start Server\Logs\latest.log
goto erro

:saircerteza
set /p name=<Client\data\projectname.key
title Minecraft Server Launcher %name% Sair? :(
cls
color 4
echo quer sair mesmo %username%
set /p opcao= S/N :
echo ------------------------------

if %opcao% equ s goto sair
if %opcao% equ n goto menu
if %opcao% GEQ 0 goto saircerteza
:sair
msg * O programa foi fechado com sucesso Obrigado por usar ;) .BAT By Ramires Oliv
exit