<script>

    const queryString = window.location.search;
    const urlParams = new URLSearchParams(queryString);
    const page = urlParams.get('page')
    const from = urlParams.get('from')
    var idk = document.getElementById("idk");

    console.log("Url for Redirect:")
    console.log(page)

    console.log(idk)
    idk.innerHTML = "idk"; 

    if (page == null) { window.location.href = "RequestError?code=page for redirect not found"}

    if (page == "https://github.com/gabrielramires/MinecraftServerMenu/wiki") { 
        idk.innerHTML = "wiki page _confiabled_ - in github and from gabrielramires.";
    } else {
        idk.innerHTML = "hmm. _maybe unreliable_ - not from gabrielramires.";
    }

    function Return() {
        if (from != null) {
            window.location.href = from;
        } else {
            window.location.href = "."
        };
    }

    function StartRedirect() {
        if (page != null) {
            window.location.href = page;
        } else {
            alert("page not found calling null")
            console.log("page not found calling null")
        }
    }

</script>

# Redirection iminent!

<p id="idk"></p>

<h3>you are leaving our website you are accessing another site do you want to continue and goto to other Website you have sure to continue?</h3>

<button onclick="StartRedirect()">Yes and Continue</button>\
<button onclick="Return()">No and Back</button>
