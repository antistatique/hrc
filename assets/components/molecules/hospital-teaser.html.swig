---
title: hospital-teaser
name: hospital-teaser
collection: molecules
notes: |
  ##### Usage : `hospital-teaser`
  ##### Options :
  - **content** - Object (`{title, phone, desc}`)
---
{% include '../atoms/block-link.html.swig' with {label: content.title, url: content.title|titleToUrl} %}
<p>
  {% if content.desc %}{{content.desc}}{% else %}Lorem ipsum dolor sit amet, consectetur adipiscing elit.{% endif %}
</p>
{% include '../atoms/phone.html.swig' with {number: content.phone} %}
