---
title: Organigramme
name: organigramme
collection: pages
styleguide: false
layout: page.html.swig
---
{% include '../molecules/cover.html.swig' with {
  src: '/build/img/cover_organigramme.jpg'
} %}

<div class="spacer spacer-sm"></div>

{% include '../molecules/breadcrumb.html.swig' with {
  links: [
    {"label": "Accueil", "url": "/"},
    {"label": "L’Hôpital Riviera-Chablais", "url": "/lhopital-riviera-chablais"},
    {"label": "Qui sommes-nous ?", "url": "/qui-sommes-nous"}
  ],
  current: 'Organigramme'}
%}

<div class="row theme-primary">
  <div class="col-sm-8">
    <h1 class="text-primary">Organigramme</h1>
    <img src="/build/img/organigramme.png" alt="hrc - organigramme" class="img-responsive">
  </div>
</div>

<div class="spacer spacer-sm"></div>
