---
title: Patients et proches
name: patients-et-proches
collection: pages
styleguide: false
layout: page.html.swig
contentful:
  space_id: fbqunpc2pjfz
  content_type: basicPage
  id: 71go0WJM1qkeQg6Q26sUWw
---
{% set object = contentful.contentTypes[contentful.content_type]|get(contentful.id) %}
{% set content = object.data.fields %}

{% include '../molecules/cover.html.swig' with {
  src: content.coverImage.fields.file.url
} %}

<div class="spacer spacer-sm"></div>

{% include '../molecules/breadcrumb.html.swig' with {
  links: [
    {"label": "Accueil", "url": "/"},
    {"label": "L’Hôpital Riviera-Chablais", "url": "/lhopital-riviera-chablais"}
  ],
  current: content.title}
%}

<h1 class="text-primary">{{content.title}}</h1>

<div class="spacer spacer-sm"></div>

<div class="row theme-primary">
  <div class="col-sm-12">
    <div class="text-col-2">
      {{content.body|markdown|raw}}
    </div>
  </div>
</div>

<div class="spacer"></div>


<div class="row row-flex grid">
  <div class="col-sm-4">
    {% include '../atoms/button-link.html.swig' with {label: "Séjour à l'hôpital", url: 'sejour-a-lhopital'} %}
  </div>
  <div class="col-sm-4">
    {% include '../atoms/button-link.html.swig' with {label: 'Sécurité', url: 'securite'} %}
  </div>
  <div class="col-sm-4">
    {% include '../atoms/button-link.html.swig' with {label: 'Droits', url: 'droits'} %}
  </div>
  <div class="col-sm-4">
    {% include '../atoms/button-link.html.swig' with {label: 'Commission d’éthique clinique', url: 'commission-dethique-clinique'} %}
  </div>
</div>
