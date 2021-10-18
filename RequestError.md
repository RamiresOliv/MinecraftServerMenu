# Request Error

<p>Error Type:</p>
<p id="code"></p>

<p>Requested From:</p>
<p id="from"></p>

<p>an unexpected error occurred while trying to access the page please try again later :/</p>

<-- <a href=".">Back</a>

<script>
    if(window.location.href.includes('?') == false) { 
        alert("unexpected error :/ returning to home page...")
        window.location.href = "." 
    }
    
    if(window.location.href.includes('code=') == false) { 
        if(window.location.href.includes('from=') == true) {
        window.location.href = window.location.href.slice(window.location.href.indexOf('from=') + 1)
        } else {
            alert("unexpected error :/ returning to home page...")
            window.location.href = "."
        }
    }

    var errorcode = window.location.href.slice(window.location.href.indexOf('code=') + 1);
    var requestedpage = window.location.href.slice(window.location.href.indexOf('from=') + 1);

    document.getElementById("code").innerHTML = errorcode;
    document.getElementById("from").innerHTML = requestedpage;
</script>
