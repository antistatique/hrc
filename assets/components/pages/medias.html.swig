---
title: Médias
name: medias
collection: pages
styleguide: false
layout: page.html.swig
---
{% include '../molecules/cover.html.swig' %}

<div class="spacer spacer-sm"></div>

{% include '../molecules/breadcrumb.html.swig' %}

<h1 class="text-primary">{{title}}</h1>

{% include '../organisms/press-releases.html.swig' %}

<div class="spacer spacer-sm"></div>

<div class="press-release theme-primary">
  <div class="row">
    <div class="col-sm-8">
      <h3>Publications</h3>
      <div class="spacer spacer-xs"></div>
      {% include '../molecules/file-teaser.html.swig' %}
      {% include '../molecules/file-teaser.html.swig' with {label: 'Sequoia — <b>2 ans de fusion !</b>'} %}
      {% include '../molecules/file-teaser.html.swig' with {label: 'Rapport annuel — <b>2015</b>'} %}
    </div>
  </div>
</div>

<div class="spacer spacer-sm"></div>

<h3 class="text-primary">Photos</h3>
<p>Téléchargeables depuis le slideshow.</p>
<div class="spacer spacer-xs"></div>
{% include '../organisms/gallery.html.swig' %}

<div class="spacer spacer-sm"></div>

<div class="press-release theme-primary">
  <div class="row">
    <div class="col-sm-8">
      <h3>Logos</h3>
      <div class="spacer spacer-xs"></div>
      {% include '../molecules/file-teaser.html.swig' with {label: 'Hôpital Riviera Chablais'} %}
      {% include '../molecules/file-teaser.html.swig' with {label: 'Canton de Vaud'} %}
    </div>
  </div>
</div>

<div class="spacer"></div>
