---
title: Site de demain
name: site-de-demain
collection: pages
styleguide: false
layout: page.html.swig
contentful:
  space_id: fbqunpc2pjfz
  content_type: basicPage
  id: 5UlrSsSZHO2CQI4EKWYuIq
---
{% set object = contentful.contentTypes[contentful.content_type]|get(contentful.id) %}
{% set content = object.data.fields %}

{% include '../molecules/cover.html.swig' with {
  src: content.coverImage.fields.file.url,
  heading: content.title,
} %}

<div class="spacer spacer-sm"></div>

{% include '../molecules/breadcrumb.html.swig' with {
  links: [
    {"label": "Accueil", "url": "/"},
    {"label": "L’Hôpital Riviera-Chablais", "url": "/lhopital-riviera-chablais"}
  ],
  current: content.title}
%}

<div class="row theme-primary">
  <div class="col-sm-8">
    {{content.body|markdown|raw}}
  </div>
</div>

<div class="spacer spacer-sm"></div>

<h2 class="text-primary">
  Les sites actuels
</h2>

<div class="spacer spacer-sm"></div>

<div class="row">
  <div class="col-sm-6">
    <img src="/build/img/map.jpg" class="img-responsive img-full">
  </div>
  <div class="col-sm-6">
    {% for hospital in content.hospitals %}
      {% include '../molecules/hospital-item.html.swig' with {content: hospital.fields} %}
    {% endfor %}
  </div>
</div>
