---
title: button
name: button
collection: atoms
notes: |
  ##### Usage : `button`
  ##### Options :
  - **label** - String
---
<button class="btn btn-lg btn-primary">
  {% spaceless %}
    {% if label %}
      {{label}}
    {% else %}
      My button
    {% endif %}
  {% endspaceless %}
</button>
