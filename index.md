---
layout: home
title: Home
---

<p><i>This is mine... Minecraft Server Menu doesn't have anything about mojang here the project is totally mine in the end this file is not a virus it just starts the server as the User configures.</i></p>

<a href="https://github.com/gabrielramires/MinecraftServerMenu/blob/master/LICENSE"><i>GNU General Public License v2.0</i> License</a>

<h2>Pages:</h2>

<a href="Download">Download</a>\
<a href="Docs">Docs</a>\
<a href="Redirect?page=https://github.com/gabrielramires/MinecraftServerMenu/wiki">This menu can give me virus?</a> <i>-wiki page</i>

<h3>Credits:</h3>
<ul>
{% for member in site.data.people.members %}
  <li>
    {% if member.github == nil %}
    <a target="_blank" href="https://twitter.com/{{ member.twitter }}">
      {{ member.name }} </a>
        {% if member.creator == false %} Not Creator {% elsif member.creator == true %} Valid Creator {% else %} Creator its null! {% endif %}
        {{ member.note }}

        {% if member.note == nil %}
        idk
        {% else %}
            {{ member.note }}
        {% endif %}
    {% elsif member.twitter == nil %}
    <a target="_blank" href="https://github.com/{{ member.github }}">
        {{ member.name }} </a>
        {% if member.creator == false %} Not Creator {% elsif member.creator == true %} Valid Creator {% else %} Creator its null! {% endif %}
        {{ member.note }}
    {% else %}
    <p>Invalid value</p>
    {% endif %}

  </li>
{% endfor %}
<small>This Credits Menu has been created from the <a id="Button" onclick="peoplefileopen()" style="cursor: pointer;">people.yml</a></small>
<small id="ShowCreditsPeople"></small>
</ul>

<!--
      LocalHost Disclaimer to work
-->

{% if site.url contains 'localhost' %}

<h3><b><span style="color: yellow;">⚠</span> DISCLAIMER: <span style="color: yellow;">⚠</span></b></h3>
<li><b style="color: red;">maybe some things on the site don't work directly because of it running on LocalHost</b></li>
<li><b style="color: green;">Cool: the Disigne of the Website not changed.</b></li>
<li><b style="color: green;">Visit on Github the <a href="https://gabrielramires.github.io/MinecraftServerMenu">Original Website</a></b></li>
<i><small>(ignore this message just a warning. for developers and etc.)</small></i>
{% endif %}

<script>
    var peoplefileopenned = false

    var sel = document.getElementById("Button").getSelection();
    sel.removeAllRanges();
    
    function peoplefileopen() {
        if (peoplefileopenned == true) {
            peoplefileopenned = false;
            document.getElementById("ShowCreditsPeople").innerHTML = ""
        } else {
            peoplefileopenned = true;
            document.getElementById("ShowCreditsPeople").innerHTML = `
            {% highlight yml %}members:
    - name: Gabriel Ramires
      creator: true
      github: gabrielramires

    - name: Arthur Ft
      creator: false
      github: ArthurFt
      note: "(Test User)"{% endhighlight %}
    
    <a target="_blank" href="Assets/Images/CodeScreamShoot1.png"><img src="Assets/Images/CodeScreamShoot1.png" alt="Code Scream Shoot (UNLOADED)"></a>
    <small>See this <a href="https://gist.github.com/gabrielramires/22652461638c32cfcb7f138140494800">Code</a> in Github</small>`

            
        }
    }
</script>
