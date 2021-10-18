<script>
    function StartRedirect() {
       // const urlParams = new URLSearchParams(window.location.search);
            var request = window.location.href.slice(window.location.href.indexOf('?') + 1);
            
            window.location.replace = request
    }
</script>

# Redirection iminent!

## you are leaving our website you are accessing another site do you want to continue?

<button onclick="StartRedirect()">Yes and Continue</button>

<button href=".">No and Back</button>
