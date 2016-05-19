---
title: phone
name: phone
collection: atoms
notes: |
  ##### Usage : `phone`
  ##### Options :
  - **number** - String (ex: `021 473 17 31`)
---
<a href="tel:{% if number %}{{number|phoneRaw}}{% else %}0041214731731{% endif %}" class="phone">
  <i class="icon icon-phone"></i>
  {% if number %}{{number|phoneFancy|raw}}{% else %}021 473 17 31{% endif %}
</a>
