---
permalink: Download/Windows
layout: default
---

<lu id="Credits"> <!-- Need Create a Data Folder and Create a Data File -->
{% assign DataFileName = "Creditos" %} <!-- Define here the Data File Name -->
{% for Usuario in site.data[DataFileName].Usuarios %} {% if Usuario.github != nil %} <li><a target="_blank" href="https://github.com/{{ Usuario.github }}">{{ Usuario.name }}</a></li> {% elsif Usuario.twitter != nil %} <li><a target="_blank" href="https://twitter.com/{{ Usuario.twitter }}">{{ Usuario.name }}</a></li> {% else %} <script> console.warn("Can't add {{ Usuario.name }} to Credits Page You need define a Twitter or a Github.") </script> {% endif %} {% endfor %}
</lu>

<h1 id="oohhmagod">Download/Windows</h1>

<h3>Types:</h3>

Download using <a onclick="Thanks('bini')" href="../Assets/Downloads/Minecraft_Java_Server.bat">Direct Download</a>\
Download using <a onclick="Thanks('bii')" href="../Assets/Downloads/Minecraft_Server_Menu_Installer.bat"><span style="color: red;">Updated!</span> Batch _Command Prompt_ Installer</a> -- <i style="color: green;">update and remove system <b>[RECOMMENDED]</b></i>

<h3><a href=".">Back</a><h3>

<i><h6>FOR WINDOWS 11, 10, 8, 7, 0 OR POTATO EDITION.</h6></i>

<!-- Notes gona stay here: --!>

<!-- Download using <a onclick="Thanks('bii')" href="Assets/Downloads/Minecraft_Server_Menu_Installer.bat"><span style="color: red;">NEW!</span> exe _Executer_ Installer</a> -- <i style="color: green;">update and remove system <b>[RECOMMENDED]</b></i>
-->

<script>
    function Thanks(protocol) {
        setTimeout(function() {
            window.location.href = `../Thanks?tp=${protocol}`
        }, 1000);
    }
</script>
