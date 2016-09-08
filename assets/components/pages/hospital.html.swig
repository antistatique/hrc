---
title: Hôpital
name: hospital
collection: pages
styleguide: false
layout: page.html.swig
contentful:
  space_id: fbqunpc2pjfz
  content_type: hospital
  id: 60rSw13PrymCkUSSGeoyWO
---
{% set hospitals = contentful.contentTypes[contentful.content_type] %}
{% set object = hospitals|get(contentful.id) %}
{% set content = object.data.fields %}

{% include '../molecules/cover.html.swig' with {
  src: content.coverImage.fields.file.url,
  emergency: true
} %}

<div class="spacer spacer-sm"></div>

{% include '../molecules/breadcrumb.html.swig' %}

<div class="row">
  <div class="col-sm-5 col-md-4">
    {% include '../molecules/map.html.swig' with {
      lat: content.location.lat,
      long: content.location.lon
    } %}
  </div>
  <div class="col-sm-7 col-md-8">
    <h1 class="text-primary no-margin">{{title}}</h1>
    <div class="spacer spacer-sm"></div>
    <div class="row">
      <div class="col-md-4">
        {% include '../atoms/iconed-item.html.swig' with {
          theme: 'primary',
          icon: 'envelope',
          heading: content.address
        } %}
        {% include '../atoms/phone.html.swig' with {number: content.phone} %}
        {% if content.numberEmergency %}
          {% include '../atoms/iconed-item.html.swig' with {
            theme: 'warning',
            icon: 'cross',
            heading: content.numberEmergency|phoneFancy|raw
          } %}
        {% endif %}
        {% include '../atoms/iconed-item.html.swig' with {
          theme: 'primary',
          icon: 'clock',
          heading: 'Horaires des visites'
        } %}
        {{content.visitingHours|markdown|raw}}
      </div>
      <div class="col-md-8">
        <div class="text-col-2">
          {{content.servicesList|markdown|raw}}
        </div>
      </div>
    </div>
  </div>
</div>

<div class="spacer spacer-sm"></div>
{% include '../atoms/shadow-separator.html.swig' %}

<div class="spacer spacer-xs"></div>
<h2 class="text-primary">
  Les sites actuels
</h2>

<div class="spacer spacer-md"></div>

<div class="row">
  <div class="col-sm-4">
    <img src="/build/img/map.jpg" class="img-responsive img-full">
  </div>
  <div class="col-sm-6">
    <div class="row">
      {% for hospital in hospitals %}
        <div class="col-sm-4">
          {% include '../molecules/hospital-teaser.html.swig' with {content: hospital.data.fields} %}
        </div>
        {% if loop.index % 3 == 0 %}
          </div><div class="row">
        {% endif %}
      {% endfor %}
    </div>
  </div>
</div>

<div class="spacer spacer-sm"></div>
