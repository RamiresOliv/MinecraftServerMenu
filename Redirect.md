<script>
    function StartRedirect(ButtonType) {
        if ButtonType == "yes" {
            const urlParams = new URLSearchParams(window.location.search);
            const myParam = urlParams.get('myParam');

            window.location = MyParam
        } else {
            window.location = "."
        }
    }
</script>

# Redirection iminent

## you are leaving our website you are accessing another site do you want to continue?

<button onclick="StartRedirect('yes')">Yes and Continue</button>\
<button onclick="StartRedirect('no')">No and Back</button>
