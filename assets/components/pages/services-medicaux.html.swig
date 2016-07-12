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

{% include '../molecules/cover.html.swig' with {
  src: 'https://images.contentful.com/fbqunpc2pjfz/6RCpWUJNUAoe442mok6U4u/cd7fc6a880bd7e01ff688fe0780cc377/HRC_CoverServicester.jpg'
} %}

<div class="spacer spacer-sm"></div>

{% include '../molecules/breadcrumb.html.swig' with {
  links: [{"label": "Accueil", "url": "/"}],
  current: title}
%}

<h1 class="text-primary">{{content.title}}</h1>

<div class="spacer spacer-sm"></div>

<div class="row theme-primary">
  <div class="col-sm-12">
    <div class="text-col-2">
      {{content.body|markdown|raw}}
    </div>
  </div>
</div>

<div class="spacer"></div>


<div class="row row-flex grid">
  {% for service in content.services %}
    <div class="col-sm-4">
      {% include '../atoms/button-link.html.swig' with {label: service.fields.title, url: service.fields.title|titleToUrl} %}
    </div>
  {% endfor %}
</div>
