# Request Error

<p id="text">
    Error Type:
    <p id="code"></p>
    Requested From:
    <p id="from"></p>
</p>
<p id="request"></p>

<p>an unexpected error occurred while trying to access the page please try again later :/</p>

<-- <a href=".">Back</a>

<script>
    if(window.location.href.includes('?') == false) { 
        if(window.location.href.includes('from=') == true) {
        window.location.href = window.location.href.slice(window.location.href.indexOf('from=') + 1)
        } else {
            alert("unexpected error :/ returning to home page...")
            window.location.href = "."
        }
    }

    var errorcode = window.location.href.slice(window.location.href.indexOf('code=') + 1);
    var requestedpage = window.location.href.slice(window.location.href.indexOf('from=') + 1);

    document.getElementById("text")[code].innerHTML = errorcode;
    document.getElementById("text")[from].innerHTML = requestedpage;
</script>
