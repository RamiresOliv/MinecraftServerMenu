---
layout: page
---

<h1>Request Error ;(<h1>
<i><strong>Posible error in try get informations from a page or to the Home page Sorrrryyy :()</strong></i>

<br><br>

<p>Error Type:</p>
<p id="code"></p>

<p>Requested From:</p>
<p id="from"></p>

<p>an unexpected error occurred while trying to access the page please try again later :/</p>

<h4><a id="back_button" href=".">Back</a></h4>

<script>
    const queryString = window.location.search;
    const urlParams = new URLSearchParams(queryString);
    const back_button = document.getElementById("back_button")

    const code = urlParams.get('code')
    const from = urlParams.get('from')

    document.getElementById("code").innerHTML = code;
    document.getElementById("from").innerHTML = from;

    if (code == null) {
        alert("error: Code calling null value")
        window.location.href = "."
    } else if (code == "") {
        alert("error: The param 'code' no have success")
        window.location.href = "."
    }
    
    if (from !=  null) {
        back_button.href = from;
    } else {
        document.getElementById("from").innerHTML = "N/A";
        back_button.href = ".";
    };
</script>
