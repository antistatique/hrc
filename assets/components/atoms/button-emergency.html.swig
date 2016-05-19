---
title: button-emergency
name: button-emergency
collection: atoms
notes: |
  ##### Usage : `button-emergency`
  ##### Options :
  - **label** - String
---
<a href="tel:144" class="btn btn-warning btn-emergency">
  <i class="icon icon-phone"></i>
  {% if label %}{{label}}{% else %}Urgences vitales 144{% endif %}
</a>
