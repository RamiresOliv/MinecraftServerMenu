# Request Error

<p>Error Type:</p>
<p id="code"></p>

<p>Requested From:</p>
<p id="from"></p>

<p>an unexpected error occurred while trying to access the page please try again later :/</p>

<-- <a id="back_button" href=".">Back</a>

<script>
    const queryString = window.location.search;
    const urlParams = new URLSearchParams(queryString);
    const back_button = document.getElementById("back_button")

    const code = urlParams.get('code')
    const from = urlParams.get('from')

    document.getElementById("code").innerHTML = code;
    document.getElementById("from").innerHTML = from;

    if (from !=  null) {
        back_button.href = from;
    };
</script>
