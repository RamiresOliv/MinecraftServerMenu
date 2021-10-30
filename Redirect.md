---
layout: default
permalink: /Redirect
---

<script>
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

        console.warn("Bye!! :D")
        if (page != null) {
            window.location.href = page;
        } else {
            alert("page not found calling null")
            console.log("page not found calling null")
        }
    }

</script>

# Redirection iminent!

<h3>you are leaving our website you are accessing another site do you want to continue and goto to other Website you have sure to continue?</h3>

<button onclick="StartRedirect()">Yes and Continue</button> -- <i style="color: red;">If the site you selected was not affiliated with MinecraftServerMenu it may not be trustworthy.</i>\
<button onclick="Return()">No and Back</button>
