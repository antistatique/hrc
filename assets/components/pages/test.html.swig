---
title: test
collection: pages
styleguide: false
layout: page.html.swig
contentful:
  space_id: fbqunpc2pjfz
  content_type: basicPage
  id: sigAoCVEs0MK60AigwicE
---
{% set object = contentful.contentTypes[contentful.content_type]|get(contentful.id) %}
{% set content = object.data.fields %}

<div class="container">
  <h1>{{content.title}}</h1>
  {% if content.body %}
    {{content.body}}
  {% endif %}

  {% if content.doctors.length > 0 %}
    <ul>
      {% for doc in content.doctors %}
        <li>{{doc}}</li>
      {% endfor %}
    </ul>
  {% endif %}
</div>
