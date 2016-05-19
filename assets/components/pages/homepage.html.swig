---
title: Homepage
name: homepage
global_home: true
styleguide: false
layout: page.html.swig
contentful:
  space_id: fbqunpc2pjfz
  content_type: homepage
  id: 4B2AcBjWqIEuSI0oqCcKyg
---
{% set object = contentful.contentTypes[contentful.content_type]|get(contentful.id) %}
{% set content = object.data.fields %}

{% include '../molecules/cover.html.swig' with {heading: content.coverTitle, desc: content.coverDesc} %}

<div class="spacer spacer-sm"></div>

<div class="row">
  <div class="col-sm-6">

  </div>
  <div class="col-sm-6">
    <h3 class="text-primary">{{content.sitesTitle}}</h3>

    <div class="row">
      {% for site in content.sitesRelated %}
        <div class="col-sm-4">
          {% include '../molecules/hospital-teaser.html.swig' with {content: site.fields} %}
        </div>
        {% if loop.index % 3 == 0 %}
          </div><div class="row">
        {% endif %}
      {% endfor %}
    </div>

  </div>
</div>

<div class="spacer spacer-xl"></div>

{# {
  "title": "Vevey Samaritain",
  "location": {
    "lon": 6.854549499999962,
    "lat": 46.4609956
  },
  "phone": 219234000,
  "visitingHours": "13h00 > 20h00 chambres communes\n10h00 > 20h00 chambres privées et semi-privées\n(sauf maternité: époux visite libre)",
  "servicesList": "- Urgences médecine interne\n- Urgences gynécologiques et obstétricales\n- Urgences médico-chirurgicales de pédiatrie\n- Médecine et ses spécialités :\n  - Cardiologie\n  - Diabétologie\n  - Gastroentérologie\n  - Neurologie\n  - Pneumologie \n- Soins intensifs de médecine\n- Pédiatrie (jusqu’à 16 ans)\n- Gynécologie, obstétrique\n- Chirurgie plastique et reconstructive\n- ORL\n- Diététique\n- Physiothérapie/Ergothérapie\n- Consultations ambulatoires"
} #}
