---
title: large-teaser
name: large-teaser
collection: molecules
notes: |
  ##### Usage : `large-teaser`
  ##### Options :
  - **src** - String
  - **label** - String
  - **url** - String
  - **theme** - String (default `primary`, `succes`, `warning`, ...)
---
<div class="large-teaser">
  <img src="{% if src %}{{src}}{% else %}https://unsplash.it/1200/600?image=949{% endif %}" class="img-responsive img-full">
  <div class="container">
    {% include '../atoms/button-link.html.swig' with {label: label, url: url, theme: theme,} %}
  </div>
</div>
