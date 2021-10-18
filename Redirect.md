<script>
    var request = window.location.href.slice(window.location.href.indexOf('?') + 1);

    document.GetElementById("message").innerHTML = `you are leaving our website you are accessing another site do you want to continue and goto the ${request}?`

    function StartRedirect() {
        // const urlParams = new URLSearchParams(window.location.search);
        console.log("amongus bye bye!")
        
        window.location.replace = `https://${request}`
    }
</script>

# Redirection iminent!

<h3 id="message"></h3>

<button onclick="StartRedirect()">Yes and Continue</button>

<button href=".">No and Back</button>
