---
title: press-teaser
name: press-teaser
collection: molecules
notes: |
  ##### Usage : `press-teaser`
  ##### Options :
  - **label** - String
---
<a href="#" class="press-teaser" target="_blank">
  <i class="icon icon-file icon-circle small"></i> {% if label %}{{label|raw}}{% else %}Sequoia — <b>Objectif Rennaz !</b>{% endif %}
</a>
