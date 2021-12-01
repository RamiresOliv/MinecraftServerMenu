---
layout: page
permalink: /Download/Thanks
---

<script>
    const queryString = window.location.search;
    const urlParams = new URLSearchParams(queryString);
    const type = urlParams.get('tp')
    // const e = document.getElementById("eeeeeea").getElementsByClassName("minecraft")[0]
    const title = document.createElement('h1');
    const e = document.createElement('div');

    if (type == null) {
        window.location.href = "../400?infos=Can't Run the Thanks Page from the param 'tp' its null"
    } else if (type == "") {
        window.location.href = "../400?infos=Can't Run the Thanks Page from the param 'tp' its null"
    } else if (type == "bii") {
        e.innerHTML = `
        <p>Thank you for installing our Installer!</p>

        <p>Oh no... the installation didn't start? press <a href='Assets/Downloads/Minecraft_Server_Menu_Installer.bat'>here</a> to re-install</p>
        `
    } else if (type == "bini") {
        e.innerHTML = `
        <p>Hm... Sorry but you used Direct Download. For you get more opitions exemple install, update, remove and more. Click <a href='Assets/Downloads/Minecraft_Server_Menu_Installer.bat'>here</a> to download</p>

        <p>Oh no... the installation didn't start? press <a href='Assets/Downloads/Minecraft_Java_Server.bat'>here</a> to re-install</p>
        `
    } else {
        window.location.href = "../400?infos=Can't Run the Thanks Page from the param 'tp' have invalid argment"
    }

    title.innerHTML = "Thanks!"
    document.getElementsByClassName("page-content")[0].getElementsByClassName("wrapper")[0].getElementsByClassName("post")[0].getElementsByClassName("post-content")[0].appendChild(title);
    
    document.getElementsByClassName("page-content")[0].getElementsByClassName("wrapper")[0].getElementsByClassName("post")[0].getElementsByClassName("post-content")[0].appendChild(e);
</script>
<br>
<p><strong><a href="{{ site.url }}">Home</a></strong></p>
<p><strong><a href=".">Download</a></strong></p>
