---
title: Emplois
name: emplois
collection: pages
styleguide: false
layout: page.html.swig
contentful:
  space_id: fbqunpc2pjfz
  content_type: basicPage
  id: 5CxUnob6LKCkgyssaeMgsi
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

<div class="row theme-primary">
  <div class="col-sm-8">
    <h1 class="text-primary">{{content.title}}</h1>
    {{content.body|markdown|raw}}
  </div>
</div>

<div class="spacer spacer-sm"></div>
