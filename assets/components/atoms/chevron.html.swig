---
title: chevron
name: chevron
collection: atoms
notes: |
  ##### Usage : `chevron`
  ##### Options :
  - **direction** - String (`right` (default), `down`, `left` or `up`)
  - **classes** - String (separate by spaces)
---
<span class="chevron chevron-{% if direction %}{{direction}}{% else %}right{% endif %}{% if classes %} {{classes}}{% endif %}"></span>
