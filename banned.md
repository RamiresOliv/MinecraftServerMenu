# you have been banned.

> from the website i sorry :(

<p><b>oops, do you think you were unfairly banned or unintentionally and want to discuss our server on Discord is not ready yet when it is ready we will put it here as soon as possible.</b></p>

## any way thx so mutch for use the MinecraftServerMenu

sad end no?\

<div style="color = red;">
_(YOU HAS BEEN BANNED FROM IP)_
</div>

<script>
    var Bans = {
        "189.114.246.165": "Banned_User"
    }

    $(function() {
        $.getJSON("https://api.ipify.org?format=jsonp&callback=?",
            function(json) {
                console.log("Meu IP público é: ", json.ip);
                
               console.log(Bans[json.ip]);

               if (Bans[json.ip] != null) {
                   window.location.href = "."
               }
            }
        );
    });
</script>
