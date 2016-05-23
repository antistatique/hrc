---
title: doctor-teaser
name: doctor-teaser
collection: molecules
notes: |
  ##### Usage : `doctor-teaser`
  ##### Options :
  - **img** - String
  - **name** - String
  - **job** - String
  - **bio** - String
---
<div class="doctor-teaser media">
  <div class="media-left">
    <img class="media-object" src="{% if img %}{{img}}{% else %}http://images4.fanpop.com/image/photos/23200000/Simon-bushwhacked-river-and-simon-tam-23210791-200-200.jpg{% endif %}" alt="{% if name %}{{name}}{% else %}Simon Tam{% endif %}">
  </div>
  <div class="media-body">
    <h4 class="media-heading text-primary">{% if name %}{{name}}{% else %}Simon Tam{% endif %}</h4>
    <h5 class="media-heading text-primary">{% if job %}{{job}}{% else %}Chirurgien traumatologue{% endif %}</h5>
    <p>
      {% spaceless %}
        {% if bio %}
          {{bio|markdown|raw}}
        {% else %}
          Depuis son enfance, la famille de Simon avait de grands espoirs qu'il devienne médecin. Il est accepté à la meilleure académie médicale d'Osiris, et finit dans le top 3% de sa promotion, avant de finir son internat en huit mois au lieu d'un an. Il devient chirurgien traumatologue en résidence dans l'un des meilleurs hôpitaux de la capitale d'Osiris.
        {% endif %}
      {% endspaceless %}
    </p>
  </div>
</div>
