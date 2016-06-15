---
title: L’Hôpital Riviera-Chablais
name: lhopital-riviera-chablais
collection: pages
styleguide: false
layout: page.html.swig
contentful:
  space_id: fbqunpc2pjfz
  content_type: basicPage
  id: 4o52u2DXWgycsMWaMEa6KM
---
{% set object = contentful.contentTypes[contentful.content_type]|get(contentful.id) %}
{% set content = object.data.fields %}

{% include '../molecules/cover.html.swig' with {
  src: content.coverImage.fields.file.url
} %}

<div class="spacer spacer-sm"></div>

{% include '../molecules/breadcrumb.html.swig' with {
  links: [
    {"label": "Accueil", "url": "/"}
  ],
  current: content.title}
%}

<h1 class="text-primary">{{content.title}}</h1>

<div class="spacer spacer-sm"></div>

<div class="row">
  <div class="col-sm-12 text-col-2">
    {{content.body|markdown|raw}}
  </div>
</div>

<div class="spacer"></div>

<div class="row">
  <div class="col-sm-4">
    {% include '../atoms/button-link.html.swig' with {label: 'Sites actuels', url: 'sites-actuels'} %}
  </div>
  <div class="col-sm-4">
    {% include '../atoms/button-link.html.swig' with {label: 'Site de demain', url: 'site-de-demain'} %}
  </div>
  <div class="col-sm-4">
    {% include '../atoms/button-link.html.swig' with {label: 'Qui sommes-nous ?', url: 'qui-sommes-nous'} %}
  </div>
</div>

<div class="spacer spacer-xs"></div>

