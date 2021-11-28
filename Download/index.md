---
layout: page
title: Download
---

> Download Page here have Download Types :)

Linux: <span style="color: red;">No Support</span>\
Windows: <a href="Windows"><span style="color: green;">Supported</span></a>\
Potato: <span style="color: orange;">What</span>\
No OS System: <span style="color: pink;">Bro?</span>

<p>See Downloads:</p>
- <a href="{% if site.url contains 'localhost' %} ../Windows {% else %} Download/Windows {% endif %}">Windows</a>
- <a href="{% if site.url contains 'localhost' %} ../Linux {% else %} Download/Linux {% endif %}">Linux</a>
- <a href="{% if site.url contains 'localhost' %} ../Potato {% else %} Download/Potato {% endif %}">Potato</a>
- <span id="u_tried"><a style="cursor: pointer;" onclick="lol()">No OS System</a></span>

<h4><a href="..">Back</a></h4>

<script>
    function lol() {
        document.getElementById("u_tried").innerHTML = "Lol Really? you tried? sorry but there's no way";
    }
</script>
