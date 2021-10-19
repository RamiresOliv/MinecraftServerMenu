<script>
    function createFaction() {
        var name = document.getElementById('factionName'),
        factionName = input.value;

        document.getElementById('test1').innerHTML = name;
    }
</script>

<p id="test1"></p>

<form method="get">
    </br><button type="submit" onclick="createFaction()">create faction.</button>
    <input placeholder="name" id="factionName" name="factionName"></input>
</form>
