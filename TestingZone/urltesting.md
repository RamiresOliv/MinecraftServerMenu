---
layout: default
author: GabrielRamires

ass:
  name: "cu do amogus"
  value: eee
---

<style>
    code1 {
        background-color:  dimgray; 
        color: white;
    }
    args {
        color: green;
    }
</style>

{% if site.url == "http://localhost:4000" %}

<p> oh hello you using a localhost? lets see.. you suing the: <a href="{{ site.url }}{{ page.url }}"><args>{{ site.url }}</args></a>
{% else %}
<p>Ended hello world you using the another site url try use a <a href="{{ site.url }}{{ page.url }}"><args>http://localhost:4000</args></a></p>
{% endif %}

<br><br>

<h3>About:</h3>
<p>This exists for test the infos from the Page or Site Exemple <code1>{ site.url }</code1> 2x like this: {}</p>
