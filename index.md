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
        {% if member.creator == true %} Creator {% endif %}
        {{ member.note }}

        {% if member.note != nil %}
            {{ member.note }}
        {% endif %}
    {% elsif member.twitter == nil %}
    <a target="_blank" href="https://github.com/{{ member.github }}">
        {{ member.name }} </a>
        {% if member.creator == true %} Creator {% endif %}
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
<br>

<div id="localhost_disclaimer_style">
  <h3><b><span style="color: yellow;">⚠</span> DISCLAIMER: <span style="color: yellow;">⚠</span></b></h3>
  <li><b style="color: red;">maybe some things on the site don't work directly because of it running on LocalHost</b></li>
  <li><b style="color: green;">ULTRA COOL: if you really running u can change anything, let free for change anything</b></li>
  <li><b style="color: green;">Cool: the Disigne of the Website not changed.</b></li>
  <li><b style="color: green;">Visit on Github the <a href="https://{{ site.github_username }}.github.io/MinecraftServerMenu">Original Website</a></b></li>
  <i><small>(ignore this message just a warning. for developers and etc.)</small></i>
</div>
{% endif %}

<style type="text/css" media="screen">
  #localhost_disclaimer_style {
    animation-name: container_anim;
    animation-duration: 1s;
  }

  @keyframes container_anim {
    from {opacity: 0;}
    to {opacity: 1;}
  }
</style>

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
    <small>See this <a href="https://gist.github.com/{{ site.github_username }}/22652461638c32cfcb7f138140494800">Code</a> in Github</small>`

            
        }
    }
</script>
