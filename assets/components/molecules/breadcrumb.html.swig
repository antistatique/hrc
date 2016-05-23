---
title: breadcrumb
name: breadcrumb
collection: molecules
notes: |
  ##### Usage : `breadcrumb`
  ##### Options :
  - **links** - Array (`[{"label": "to display", "url": "/path"}, ...]`)
  - **current** - String (current page title)
---
<ol class="breadcrumb">
  {% spaceless %}
    {% if links %}
      {% for link in links %}
        <li><a href="{{link.url}}">{{link.label}}</a></li>
      {% endfor %}
    {% else %}
      <li><a href="#">Home</a></li>
      <li><a href="#">Library</a></li>
    {% endif %}
  {% endspaceless %}
  <li class="active">{% if current %}{{current}}{% else %}Current{% endif %}</li>
</ol>
