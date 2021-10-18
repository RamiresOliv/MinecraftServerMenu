<script>
    if(window.location.href.indexOf("?") > -1) {
       window.location.href = "404"
    }

    var request = window.location.href.slice(window.location.href.indexOf('?') + 1);

    console.log("Url for Redirec:")
    console.log(request)

    // document.getElementById("message").innerHTML = request;

    function StartRedirect() {
        window.location.href = request;
    }
</script>

# Redirection iminent!

<p>you are leaving our website you are accessing another site do you want to continue and goto to other Website you have sure to continue?</p>\
<button onclick="StartRedirect()">Yes and Continue</button>\
<button href="..">No and Back</button>
