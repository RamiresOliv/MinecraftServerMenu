---
layout: page
permalink: Thanks/
---

<script>
    const queryString = window.location.search;
    const urlParams = new URLSearchParams(queryString);
    const type = urlParams.get('tp')
    const text = document.getElementById("text")
    const notinstalled = document.getElementById("notinstalled")

    if (type == null) {
        notinstalled.innerHTML = "Oh no... the installation didn't start? press <a href='Assets/Downloads/Minecraft_Server_Menu_Installer.bat'>here</a> to re-install";

        text.innerHTML = "Thank you for installing our Installer!"
    } else if (type == "") {
        notinstalled.innerHTML = "Oh no... the installation didn't start? press <a href='Assets/Downloads/Minecraft_Server_Menu_Installer.bat'>here</a> to re-install";

        text.innerHTML = "Thank you for installing our Installer!"
    } else if (type == "bii") {
        notinstalled.innerHTML = "Oh no... the installation didn't start? press <a href='Assets/Downloads/Minecraft_Server_Menu_Installer.bat'>here</a> to re-install";

        text.innerHTML = "Thank you for installing our Installer!"
    } else if (type == "bini") {
        notinstalled.innerHTML = "Oh no... the installation didn't start? press <a href='Assets/Downloads/Minecraft_Java_Server.bat'>here</a> to re-install";
        
        text.innerHTML = "Hm... Sorry but you used Direct Download. For you get more opitions exemple install, update, remove and more. Click <a href='Assets/Downloads/Minecraft_Server_Menu_Installer.bat'>here</a> to download"
    }
<script>

<h1>Thanks!</h1>

<p id="notinstalled"></p>

<p id="text"></p>
