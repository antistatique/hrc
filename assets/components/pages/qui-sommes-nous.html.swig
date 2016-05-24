---
title: Qui sommes-nous ?
name: qui-sommes-nous
collection: pages
styleguide: false
layout: page.html.swig
contentful:
  space_id: fbqunpc2pjfz
  content_type: basicPage
  id: 4KQU7WE9X2uoEsougIcskk
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

