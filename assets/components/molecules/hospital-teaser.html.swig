---
title: hospital-teaser
name: hospital-teaser
collection: molecules
notes: |
  ##### Usage : `hospital-teaser`
  ##### Options :
  - **content** - Object (`{title, phone, desc}`)
---
<div class="hospital-teaser">
  {% include '../atoms/block-link.html.swig' with {label: content.title, url: 'hospital'} %}
  <div class="spacer spacer-xs"></div>
  {% include '../atoms/phone.html.swig' with {number: content.phone} %}
  <p>
    {% if content.desc %}{{content.desc}}{% elseif content.urgence %}{{content.urgence}}{% endif %}
  </p>
  {% if content.numberEmergency %}
    <span class="text-warning"><small class="icon icon-cross"></small>&nbsp;&nbsp;{{content.numberEmergency|phoneFancy|raw}}</span>
  {% endif %}
</div>
