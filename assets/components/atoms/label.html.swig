---
title: label
name: label
collection: atoms
notes: |
  ##### Usage : `label`
  ##### Options :
  - **label** - String
---
<span class="label label-default">
  {% spaceless %}
    {% if label %}
      {{label}}
    {% else %}
      My label
    {% endif %}
  {% endspaceless %}
</span>
