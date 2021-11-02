---
layout: page
permalink: /Thanks
---

<script>
    const queryString = window.location.search;
    const urlParams = new URLSearchParams(queryString);
    const type = urlParams.get('tp')

    if (type == null) {
        document.getElementById("txts-parts").innerHTML = `
        <p>Thank you for installing our Installer!</p>

        <p>Oh no... the installation didn't start? press <a href='Assets/Downloads/Minecraft_Server_Menu_Installer.bat'>here</a> to re-install</p>
        `
    } else if (type == "") {
        document.getElementById("txts-parts").innerHTML = `
        <p>Thank you for installing our Installer!</p>

        <p>Oh no... the installation didn't start? press <a href='Assets/Downloads/Minecraft_Server_Menu_Installer.bat'>here</a> to re-install</p>
        `
    } else if (type == "bii") {
        document.getElementById("txts-parts").innerHTML = `
        <p>Thank you for installing our Installer!</p>

        <p>Oh no... the installation didn't start? press <a href='Assets/Downloads/Minecraft_Server_Menu_Installer.bat'>here</a> to re-install</p>
        `
    } else if (type == "bini") {
        document.getElementById("txts-parts").innerHTML = `
        <p>Hm... Sorry but you used Direct Download. For you get more opitions exemple install, update, remove and more. Click <a href='Assets/Downloads/Minecraft_Server_Menu_Installer.bat'>here</a> to download</p>

        <p>Oh no... the installation didn't start? press <a href='Assets/Downloads/Minecraft_Java_Server.bat'>here</a> to re-install</p>
        `
    }
</script>

<h1>Thanks!</h1>

<div id="txts-parts">
</div>
