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

<h1 class="text-primary">{{content.title}}</h1>

<div class="spacer spacer-sm"></div>

<div class="row theme-primary">
  <div class="col-sm-12 text-col-2">
    {{content.body|markdown|raw}}
  </div>
</div>

<div class="spacer spacer-sm"></div>
<h3 class="text-primary">Emplois</h3>

<div class="row">
  <div class="col-sm-3">
    {% include '../molecules/job-teaser.html.swig' %}
  </div>
  <div class="col-sm-3">
    {% include '../molecules/job-teaser.html.swig' %}
  </div>
  <div class="col-sm-3">
    {% include '../molecules/job-teaser.html.swig' %}
  </div>
</div>

<div class="spacer spacer-sm"></div>
<h3 class="text-primary">Offres spontanées</h3>
<p>
  Envoyez-nous votre postulation à <a href="mailto:emploi@hopitalrivierachablais.ch">emploi@hopitalrivierachablais.ch</a> ou prenez contacte au <a href="tel:0041219439569">021/943 95 69</a>
</p>

<div class="spacer"></div>
