---
title: button-link
name: button-link
collection: atoms
notes: |
  ##### Usage : `button-link`
  ##### Options :
  - **label** - String
  - **chevron** - Boolean
---
{% set chevron = true %}
<a href="#" class="btn btn-lg btn-block btn-primary">
  {% spaceless %}
    {% if label %}
      {{label}}
    {% else %}
      My button
    {% endif %}
  {% endspaceless %}
  <span class="chevron pull-right"></span>
</a>
