## Downloads

> Download Page here have Download Types :)

Download using <a href="WebSiteStorage/Downloads/Minecraft_Java_Server.bat">Direct Download</a>\
Download using <a href="WebSiteStorage/Downloads/Minecraft_Server_Menu_Installer.bat">Batch Installer</a> -- update and remove system

<p><-- <a href=".">Back</a></p>

<script>
    var Bans = {
        "189.114.246.165": "Banned_User"
    }

    $(function() {
        $.getJSON("https://api.ipify.org?format=jsonp&callback=?",
            function(json) {
                console.log("Meu IP público é: ", json.ip);
                
               console.log(Bans[json.ip]);

               if (Bans[json.ip] == "Banned_User") {
                   window.location.href = "banned"
               }
            }
        );
    });
</script>
