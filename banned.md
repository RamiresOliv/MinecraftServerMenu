# you have been banned.

> from the website i sorry :(

<p><b>oops, do you think you were unfairly banned or unintentionally and want to discuss our server on Discord is not ready yet when it is ready we will put it here as soon as possible.</b></p>

## any way thx so mutch for use the MinecraftServerMenu

<br>
sad end no?
<p style="color = red;"><i>(YOU HAS BEEN BANNED FROM IP)</i></p>
</br>

<script>
    var Bans = {
        "189.114.246.165": "Banned_User"
    }

    $(function() {
        $.getJSON("https://api.ipify.org?format=jsonp&callback=?",
            function(json) {
                console.log("Meu IP público é: ", json.ip);
                
               console.log(Bans[json.ip]);

               if (Bans[json.ip] != "Banned_User") {
                   window.location.href = "."
               }
            }
        );
    });
</script>
