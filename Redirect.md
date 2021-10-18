<script>
    console.log(window.location.href.includes('?'));

    if(window.location.href.includes('?') == false) {
        document.getElementById("show").style.display='none';
    } else {
    document.getElementById("show_error").style.display='none';
    }

    var request = window.location.href.slice(window.location.href.indexOf('?') + 1);

    console.log("Url for Redirec:")
    console.log(request)

    function Return() {
        window.location.href = "."
    }

    function StartRedirect() {
        window.location.href = request;
    }
</script>

# Redirection iminent!

<div id="show_error">
    <h1>Error in try get Redirect URL</h1>\
    <p>Error in try redirect try again later.</p>\
    <-- <a href=".">Back</a>
</div>

<div id="show">
    <p>you are leaving our website you are accessing another site do you want to continue and goto to other Website you have sure to continue?</p>\
    <button onclick="StartRedirect()">Yes and Continue</button>\
    <button onclick="Return()">No and Back</button>
</div>
