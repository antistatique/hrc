---
title: Contact
name: contact
collection: pages
styleguide: false
layout: page.html.swig
contentful:
  space_id: fbqunpc2pjfz
  content_type: hospital
  id: 5ZKEZv4AZqUKCSA0EoIgmo
---
{% set hospitals = contentful.contentTypes[contentful.content_type] %}

{% include '../molecules/cover.html.swig' with {
  src: 'http://images.contentful.com/fbqunpc2pjfz/2rhvXzx5FuioMayGw6ycYo/12bc412bf134b1f636b68e58aca22911/CoverHopital.jpg'
} %}

<div class="spacer spacer-sm"></div>

{% include '../molecules/breadcrumb.html.swig' with {
  links: [
    {"label": "Accueil", "url": "/"},
  ],
  current: 'contact'}
%}

<div class="row">
  <div class="col-sm-6 col-sm-offset-3">
    <h1 class="text-primary">Contact</h1>

    <div class="spacer spacer-sm"></div>

    {% for hospital in hospitals %}
      {% include '../molecules/hospital-item.html.swig' with {
        content: hospital.data.fields,
        nothumb: true
      } %}
    {% endfor %}
    <div class="row">
      <div class="col-sm-6">
      </div>
    </div>

    <div class="spacer spacer-xs"></div>
  </div>
</div>
