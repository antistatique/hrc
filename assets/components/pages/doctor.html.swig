---
title: Direction
name: doctor
collection: pages
styleguide: false
layout: page.html.swig
contentful:
  space_id: fbqunpc2pjfz
  content_type: hospital
  id: 60rSw13PrymCkUSSGeoyWO
---
{% set hospitals = contentful.contentTypes[contentful.content_type] %}

{% include '../molecules/cover.html.swig' with {
  src: content.coverImage.fields.file.url
} %}

<div class="spacer spacer-sm"></div>
{% include '../molecules/breadcrumb.html.swig' with %}
<div class="spacer spacer-sm"></div>

<div class="row">
  <div class="col-xs-8 col-xs-offset-2 col-sm-3 col-sm-offset-0">
    <img src="http://hopitalrivierachablais.ch/upload/docs/image/jpeg/2016-07/seematter_gerald.jpg" class="img-responsive img-full" alt="Dr Gérald Seematter" />
    <div class="spacer visible-xs"></div>
  </div>
  <div class="col-xs-12 col-sm-6">
    <h1 class="text-primary">Dr Gérald Seematter</h1>
    <h3 class="h4">Médecin chef du service <a href="/hrc/service">Anesthésiologie</a></h3>

    <div class="spacer spacer-sm"></div>

    <h4>Spécialité(s) FHM</h4>
    <p>
      Médecine intensive et anesthésiologie
    </p>

    <div class="spacer spacer-xs"></div>

    <h4>Biographie</h4>
    <p>
      Titulaire d’un doctorat en médecine ainsi que des titres de spécialiste en médecine intensive et en anesthésiologie, le Dr Gérald Seematter a travaillé principalement au CHUV comme chef de clinique et à l’Hôpital Riviera comme chef de clinique, puis comme médecin chef du service d’anesthésiologie dès septembre 2009. Il porte un intérêt marqué pour les thématiques en lien avec la qualité des soins et la sécurité des patients et a d’ailleurs effectué une formation en gestion des risques (Risk management study of the Harvard Medical Institutions). En outre, il est membre du comité sécurité des hôpitaux de la FHV.
    </p>

    <div class="spacer spacer-xs"></div>

    <h4>Contact</h4>
    <div class="spacer spacer-xs"></div>
    <p>
      {% include '../atoms/phone.html.swig' with {number: '211234567'} %}<br />
      <em>*Heures d'appel: 9h-12h et 13h-17h</em><br><br>
      <strong>Fax</strong>: 021 123 45 68</a><br>
      <strong>E-mail</strong>: <a href="mailto:g.seematter@hopitalrivierachablais.ch">g.seematter@hopitalrivierachablais.ch</a>
    </p>

    <div class="spacer spacer-sm"></div>

    <h3>Consultation(s)</h3>
    {% include '../molecules/consultation-teaser.html.swig' with { nodoc: true }  %}

    <div class="spacer spacer-sm"></div>

    <h3>Les sites où ce médecin exerce</h3>
    <div class="spacer spacer-xs"></div>
    <div class="row">
      <div class="col-sm-8 col-md-6">
        {% for hospital in hospitals %}
          {% if loop.index < 4 %}
            {% include '../molecules/hospital-teaser.html.swig' with {content: hospital.data.fields} %}
          {% endif %}
        {% endfor %}
      </div>
    </div>

    <div class="spacer spacer-sm"></div>
    
  </div>
</div>
