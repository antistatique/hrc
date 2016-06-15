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
  <div class="col-sm-12 text-col-2">
    {{content.body|markdown|raw}}
  </div>
</div>

<div class="spacer"></div>
