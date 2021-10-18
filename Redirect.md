<script>
    function StartRedirect() {
        const urlParams = new URLSearchParams(window.location.search);
            const myParam = urlParams.get('myParam');

            window.location = MyParam
    }
</script>

# Redirection iminent

## you are leaving our website you are accessing another site do you want to continue?

<button onclick="StartRedirect()">Yes and Continue</button>

<button href=".">No and Back</button>
