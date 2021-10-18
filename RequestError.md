# Request Error

<p>Error Type:</p>\
<p id="request"></p>

<p>an unexpected error occurred while trying to access the page please try again later :/</p>

<-- <a href=".">Back</a>

<script>
    var request = window.location.href.slice(window.location.href.indexOf('?') + 1);

    document.getElementById("request").innerHTML = request;
</script>
