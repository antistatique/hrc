---
title: cover
name: cover
collection: molecules
notes: |
  ##### Usage : `cover`
  ##### Options :
  - **src** - String
  - **heading** - String
  - **desc** - String
  - **emergency** - Boolean
---
<div class="cover">
  {% if emergency %}
    {% include '../atoms/button-emergency.html.swig'%}
  {% endif %}

  <img
    src="{% if src %}{{src}}{% else %}https://unsplash.it/1200/600?image=949{% endif %}"
    alt="{% if heading %}{{heading}}{% else %}Hôpital Riviera-Chablais{% endif %}"
    class="img-responsive">

  <div class="cover-content">
    <h1 class="text-primary">
      {% if heading %}{{heading}}{% else %}Hôpital Riviera-Chablais{% endif %}
    </h1>
    <p>
      {% spaceless %}
        {% if desc %}
          {{desc}}
        {% else %}
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Verum hoc idem saepe faciamus. In qua si nihil est praeter rationem, sit in una virtute finis bonorum; Magni enim aestimabat pecuniam non modo non contra leges, sed etiam legibus partam. Quae cum dixisset paulumque institisset, Quid est? Non enim, si omnia non sequebatur.
        {% endif %}
      {% endspaceless %}
    </p>
  </div>
</div>
