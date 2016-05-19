---
title: button-link
name: button-link
collection: atoms
notes: |
  ##### Usage : `button-link`
  ##### Options :
  - **label** - String
  - **url** - String
---
{% set chevron = true %}
<a href="{% if url %}{{url}}{% else %}#{% endif %}" class="btn btn-lg btn-block btn-primary">
  {% spaceless %}
    {% if label %}
      {{label}}
    {% else %}
      My button
    {% endif %}
  {% endspaceless %}
  {% include '../atoms/chevron.html.swig' with {direction: 'right', classes: 'pull-right'} %}
</a>
