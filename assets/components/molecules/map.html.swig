---
title: map
name: map
collection: molecules
notes: |
  ##### Usage : `map`
  ##### Options :
  - **long** - Float
  - **lat** - Float
---
{% spaceless %}
  {% if not lat %}
    {% set lat = 46.311724 %}
  {% endif %}
  {% if not long %}
    {% set long = 6.962710300000026 %}
  {% endif %}
{% endspaceless %}
<a href="https://www.google.ch/maps/place/{{lat}},{{long}}/@{{lat}},{{long}},2000m" target="_blank">
  <img src="https://maps.googleapis.com/maps/api/staticmap?center={{lat}},{{long}}&markers=color:red%7Clabel:H%7C{{lat}},{{long}}&zoom=12&size=300x300&scale=2&key=AIzaSyCDCGVFuIhWBdikzhaKvCDwwkHRdCcSjXk" class="img-responsive">
</a>
