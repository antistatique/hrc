---
title: Sites actuels
name: sites-actuels
collection: pages
styleguide: false
layout: page.html.swig
contentful:
  space_id: fbqunpc2pjfz
  content_type: basicPage
  id: 3GFJi00fPyOogqU2AcuqES
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

<div class="row">
  <div class="col-sm-12">
    <div class="text-col-2">
      {{content.body|markdown|raw}}
    </div>
  </div>
</div>

<div class="spacer spacer-sm"></div>
{% include '../atoms/shadow-separator.html.swig' %}
<div class="spacer spacer-md"></div>

<div class="row">
  <div class="col-sm-4">
    <img src="/hrc/build/img/map.jpg" class="img-responsive img-full">
  </div>
  <div class="col-sm-6">
    <div class="row">
      {% for hospital in content.hospitals %}
        <div class="col-sm-4">
          {% include '../molecules/hospital-teaser.html.swig' with {content: hospital.fields} %}
        </div>
        {% if loop.index % 3 == 0 %}
          </div><div class="row">
        {% endif %}
      {% endfor %}
    </div>
  </div>
</div>

<div class="spacer spacer-sm"></div>

