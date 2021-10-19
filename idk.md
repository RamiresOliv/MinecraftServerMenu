<script>
    function createFaction() {
        submitedvalue = docment.getElementById("submitedvalue").value;

        document.getElementById('test1').innerHTML = submitedvalue;
    }
</script>

<p id="test1"></p>

<button type="submit" onclick="createFaction()">create faction.</button>\
<input placeholder="name" id="submitedvalue" name="factionName"></input>
