---
layout: page
permalink: /Thanks
---

<script>
    const queryString = window.location.search;
    const urlParams = new URLSearchParams(queryString);
    const type = urlParams.get('tp')
    const text = document.getElementById("text")

    if (type == null) {
        texts.innerHTML = `<p>Thank you for installing our Installer!</p>

        <p>Oh no... the installation didn't start? press <a href='Assets/Downloads/Minecraft_Server_Menu_Installer.bat'>here</a> to re-install</p>
        `
    } else if (type == "") {
        texts.innerHTML = `<p>Thank you for installing our Installer!</p>

        <p>Oh no... the installation didn't start? press <a href='Assets/Downloads/Minecraft_Server_Menu_Installer.bat'>here</a> to re-install</p>
        `
    } else if (type == "bii") {
        texts.innerHTML = `<p>Thank you for installing our Installer!</p>

        <p>Oh no... the installation didn't start? press <a href='Assets/Downloads/Minecraft_Server_Menu_Installer.bat'>here</a> to re-install</p>
        `
    } else if (type == "bini") {
        texts.innerHTML = `<p>Hm... Sorry but you used Direct Download. For you get more opitions exemple install, update, remove and more. Click <a href='Assets/Downloads/Minecraft_Server_Menu_Installer.bat'>here</a> to download</p>

        <p>Oh no... the installation didn't start? press <a href='Assets/Downloads/Minecraft_Java_Server.bat'>here</a> to re-install</p>
        `
        document.getElementById("msgibni").innerHTML = "Oh no... the installation didn't start? press <a href='Assets/Downloads/Minecraft_Java_Server.bat'>here</a> to re-install";
    }
</script>

<h1>Thanks!</h1>

<div id="texts">
    <p id="text"></p>
    <p id="msgibni"></p>
</div>
