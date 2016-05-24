---
title: iconed-item
name: iconed-item
collection: atoms
notes: |
  ##### Usage : `iconed-item`
  ##### Options :
  - **theme** - String
  - **icon** - String
  - **heading** - String
  - **desc** - String
---
<div class="item-iconed theme-{% if theme %}{{theme}}{% else %}primary{% endif %}">
  <i class="icon icon-{% if icon %}{{icon}}{% else %}search{% endif %} icon-circle"></i>
  <div class="item-iconed-content">
    {% spaceless %}
      {% if heading %}
        <h6>{{heading}}</h6>
      {% endif %}
      {% if desc %}
        <p>
          {{desc}}
        </p>
      {% endif %}
    {% endspaceless %}
  </div>
</div>
