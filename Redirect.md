<script>
    var Bans = {
        "189.114.246.165": "Banned_User"
    }

    const queryString = window.location.search;
    const urlParams = new URLSearchParams(queryString);
    const page = urlParams.get('page')
    const from = urlParams.get('from')

    console.log("Url for Redirect: ", page)

    if (page == null) {
        window.location.href = "RequestError?code=page for redirect not found"
    } else if (page == "") {
        window.location.href = "RequestError?code=The param 'page' no have success"
    } else if (page == "lol") {
        window.location.href = "RequestError?code=lol xd"
    }

    function Return() {
        if (from != null) {
            window.location.href = from;
        } else {
            window.location.href = "."
        };
    }

    function StartRedirect() {
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

        warn("Bye!! :D")
        if (page != null) {
            window.location.href = page;
        } else {
            alert("page not found calling null")
            console.log("page not found calling null")
        }
    }

</script>

# Redirection iminent!

<h3 id="test1">you are leaving our website you are accessing another site do you want to continue and goto to other Website you have sure to continue?</h3>

<button onclick="StartRedirect()">Yes and Continue</button> -- <i style="color: red;">If the Website not afiliad of the MinecraftServerMenu pls attention.</i>\
<button onclick="Return()">No and Back</button>
