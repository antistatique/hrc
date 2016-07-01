---
title: rennaz
name: rennaz
collection: pages
styleguide: false
layout: page.html.swig
contentful:
  space_id: fbqunpc2pjfz
  content_type: hospital
  id: 60rSw13PrymCkUSSGeoyWO
---
{% set hospitals = contentful.contentTypes[contentful.content_type] %}
{% set object = hospitals|get(contentful.id) %}
{% set content = object.data.fields %}

{% include '../molecules/cover.html.swig' with {
  src: 'http://images.contentful.com/fbqunpc2pjfz/2o0uzZTaeY04uEQKYUwKSi/93839247e6bffcc136264bcab99dbb63/CoverSitedemain.jpg',
  emergency: true
} %}


{% include '../molecules/breadcrumb.html.swig' with {
  links: [
    {"label": "Accueil", "url": "/"},
    {"label": "L’Hôpital Riviera-Chablais", "url": "/lhopital-riviera-chablais"}
  ],
  current: 'Site de demain'}
%}

<div class="row theme-primary">
  <div class="col-sm-6">
    <h1>Site de demaine</h1>
    <p>
      En décembre 2018, les activités cliniques de l’HRC seront rassemblées dans un nouveau bâtiment hospitalier en construction à Rennaz, à deux pas de la frontière valdo-valaisanne. Conséquence : quatre sites actuels fermeront leurs portes (Aigle, Vevey Providence, Mottex et Montreux). Les deux restants seront réaménagés en centres de traitement et de réadaptation.
    </p>
    <p>
      Le futur bâtiment des soins aigus est en construction depuis le printemps 2015 sur la commune vaudoise de Rennaz. La pose symbolique de la première pierre a eu lieu en juin de la même année. L’édifice conçu par les architectes des bureaux Geninasca Delefortrie SA / Groupe 6 se déploiera sur trois niveaux exploitables. Le bâtiment de Rennaz marquera à l’horizontal le Chablais. Il disposera de 300 lits de soins aigus, extensibles à 350.
    </p>
    <div class="spacer spacer-sm"></div>
    <img src="/build/img/rennaz-demo-01.png" alt="rennaz" class="img-responsive img-full">
    <div class="spacer spacer-sm"></div>
    <p>
      A proximité de l’hôpital est prévue pour 2018 l’ouverture d’Espace Santé Rennaz. Celui-ci accueillera une crèche, des policliniques psychiatriques, l’Unité d’hospitalisation pédopsychiatrique de la Fondation de Nant, des cabinets médicaux, des chambres de garde, des logements pour les stagiaires et le personnel temporaire de l’HRC. L’espace abritera une maison de
    </p>
  </div>
  <div class="col-sm-6">
    <img src="/build/img/rennaz-demo-02.png" alt="rennaz" class="img-responsive img-full">
    <div class="spacer spacer-sm"></div>
    <img src="/build/img/rennaz-demo-03.png" alt="rennaz" class="img-responsive img-full">
  </div>
</div>

<div class="spacer spacer-sm"></div>

<img src="/build/img/rennaz-demo-04.png" alt="rennaz" class="img-responsive img-full">
<div class="row">
  <div class="col-sm-10 col-sm-offset-1">
    <div class="well-relative">
      <div class="well well-center">
        <p>
          Un nouvel hôpital réclame des routes, des transports publics, des parkings pour le personnel et les visiteurs. L’établissement a élaboré un plan de mobilité destiné à réduire les déplacements des véhicules privés à moteurs et à encourager le covoiturage, l’utilisation des trains, de bus, du vélo, voire le recours à la marche. De son côté, le canton de Vaud va renforcer la desserte du site de Rennaz par les trains et les bus.
        </p>
      </div>
    </div>
  </div>
</div>
<img src="/build/img/rennaz-demo-05.png" alt="rennaz" class="img-responsive img-full">

<div class="spacer spacer-md"></div>

<h2 class="text-primary">
  Les sites actuels
</h2>

<div class="spacer spacer-md"></div>

<div class="row">
  <div class="col-sm-4">
    <img src="/build/img/map.jpg" class="img-responsive img-full">
  </div>
  <div class="col-sm-6">
    <div class="row">
      {% for hospital in hospitals %}
        <div class="col-sm-4">
          {% include '../molecules/hospital-teaser.html.swig' with {content: hospital.data.fields} %}
        </div>
        {% if loop.index % 3 == 0 %}
          </div><div class="row">
        {% endif %}
      {% endfor %}
    </div>
  </div>
</div>

<div class="spacer spacer-sm"></div>
