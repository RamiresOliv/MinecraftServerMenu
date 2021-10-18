<script>

    const queryString = window.location.search;
    const urlParams = new URLSearchParams(queryString);

    const redirectionurl = urlParams.get('redirectionurl')
    const from = urlParams.get('from')

    console.log("Url for Redirect:")
    console.log(redirectionurl)

    function Return() {
        if (from != null) {
            window.location.href = from;
        } else {
            ndow.location.href = "."
        };
    }

    function StartRedirect() {
        if (redirectionurl != null) {
        window.location.href = redirectionurl;
        } else {
            window.location.href = "RequestError?code=404&from=" + window.location.href
        };
    }

</script>

# Redirection iminent!

<p>you are leaving our website you are accessing another site do you want to continue and goto to other Website you have sure to continue?</p>\
<button onclick="StartRedirect()">Yes and Continue</button>\
<button onclick="Return()">No and Back</button>
