---
title: Services médicaux
name: services-medicaux
collection: pages
styleguide: false
layout: page.html.swig
contentful:
  space_id: fbqunpc2pjfz
  content_type: medicalServices
  id: 2RwmS47iwgYoeK6CQwA4MW
---
{% set object = contentful.contentTypes[contentful.content_type]|get(contentful.id) %}
{% set content = object.data.fields %}

{% include '../molecules/cover.html.swig' %}

<div class="spacer spacer-sm"></div>

{% include '../molecules/breadcrumb.html.swig' with {
  links: [{"label": "Accueil", "url": "/"}],
  current: title}
%}

<h1 class="text-primary">{{content.title}}</h1>

<div class="row row-flex grid">
  {% for service in content.services %}
    <div class="col-sm-4">
      {% include '../atoms/button-link.html.swig' with {label: service.fields.title, url: service.fields.title|titleToUrl} %}
    </div>
  {% endfor %}
</div>
