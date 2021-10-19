## Downloads

> Download Page here have Download Types :)

Download using <a href="WebSiteStorage/Downloads/Minecraft_Java_Server.bat">Direct Download</a>\
Download using <a href="WebSiteStorage/Downloads/Minecraft_Server_Menu_Installer.bat">Batch Installer</a> -- update and remove system

<p><-- <a href=".">Back</a></p>

<script>
    var Bans = {
        {"name": "UserBanned1", "ip": "189.114.246.165"}
    }

    $(function() {
        $.getJSON("https://api.ipify.org?format=jsonp&callback=?",
            function(json) {
                console.log("Meu IP público é: ", json.ip);
                
                for (var i = 0; i < Bans.length; i++){
                    if (obj[i].ip != json.ip){
                        window.location.href = "."
                    }
                }
            }
        );
    });
</script>
