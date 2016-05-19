---
title: block-link
name: block-link
collection: atoms
notes: |
  ##### Usage : `block-link`
  ##### Options :
  - **label** - String
---
<a href="#" class="block-link">
  {% spaceless %}
    {% if label %}
      {{label}}
    {% else %}
      My block link
    {% endif %}
  {% endspaceless %}
  {% include '../atoms/chevron.html.swig' with {direction: 'right', classes: 'pull-right'} %}
</a>
