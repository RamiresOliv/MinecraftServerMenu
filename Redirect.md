<script>

    console.log(window.location.href.includes('?'));

    if(window.location.href.includes('?') == false) { window.location.href = "RequestError?code=404&from=" + window.location.href }

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

<p>you are leaving our website you are accessing another site do you want to continue and goto to other Website you have sure to continue?</p>\
<button onclick="StartRedirect()">Yes and Continue</button>\
<button onclick="Return()">No and Back</button>
