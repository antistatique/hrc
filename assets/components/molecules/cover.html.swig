---
title: cover
name: cover
collection: molecules
notes: |
  ##### Usage : `cover`
  ##### Options :
  - **src** - String
  - **heading** - String
  - **desc** - String
  - **emergency** - Boolean
---
<div class="cover">
  {% if emergency %}
    {% include '../atoms/button-emergency.html.swig'%}
  {% endif %}

  <img
    src="{% if src %}{{src}}{% else %}https://images.contentful.com/fbqunpc2pjfz/1lJacxX2zqAs2GAkUYw6E8/2627d12dc35bdc522684f1be53e1de4c/hrc_coverhp.jpg{% endif %}"
    alt="{% if heading %}{{heading}}{% else %}Hôpital Riviera-Chablais{% endif %}"
    class="img-responsive">

  <div class="cover-content">
    {% spaceless %}
      {% if heading %}
        <h1 class="text-primary">{{heading}}</h1>
      {% endif %}
      {% if desc %}
        <p>{{desc}}</p>
      {% endif %}
    {% endspaceless %}
  </div>
</div>
