---
title: search
name: search
collection: molecules
notes: |
  ##### Usage : `search`
  ##### Options :
  - **placeholder** - String
---
<div class="input-group search">
  <input type="text" class="form-control" placeholder="{% if placeholder %}{{numer}}{% else %}Chercher un médecin ou une consultation{% endif %}">
  <span class="input-group-btn">
    <button class="btn btn-success" type="button">
      <span class="icon icon-search"></span>
    </button>
  </span>
</div>
