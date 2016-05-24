---
title: well
name: well
collection: molecules
notes: |
  ##### Usage : `well`
  ##### Options :
  - **content** - String
  - **up** - Boolean
  - **down** - Boolean
---
<div class="well{% if up %} well-up{% endif %}{% if down %} well-down{% endif %} text-center">
  {% spaceless %}
    {% if content %}
      {{content|markdown|raw}}
    {% else %}
      <p>
        « L’hôpital de demain est ouvert, et ne se limite plus à une enveloppe imperméable entre les partenaires externes et les acteurs de l’hôpital »
      </p>
      <small>Sandra Deriaz,<br><em> directrice médicale</em></small>
    {% endif %}
  {% endspaceless %}
</div>
