<script>
    var request = window.location.href.slice(window.location.href.indexOf('?') + 1);

    console.log(request)

    //document.getElementById("message").innerHTML = "you are leaving our website you are accessing another site do you want to continue and goto the " + request + "?"

    function StartRedirect() {
        // const urlParams = new URLSearchParams(window.location.search);
        
        window.location.href = request
    }
</script>

# Redirection iminent!

<h3 id="message"></h3>

<button onclick="StartRedirect()">Yes and Continue</button>

<button href=".">No and Back</button>
