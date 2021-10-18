<script>
    var request = window.location.href.slice(window.location.href.indexOf('?') + 1);

    console.log(request)

    document.getElementById("message").innerHTML = request

    function StartRedirect() {
        window.location.href = request
    }
</script>

# Redirection iminent!

you are leaving our website you are accessing another site do you want to continue and goto the<p id="message"></p>?
<br />

<button onclick="StartRedirect()">Yes and Continue</button>\
<button href="..">No and Back</button>
