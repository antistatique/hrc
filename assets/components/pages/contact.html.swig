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

{% include '../molecules/cover.html.swig' %}

<div class="spacer spacer-sm"></div>

{% include '../molecules/breadcrumb.html.swig' %}

<div class="row theme-primary">
  <div class="col-sm-6 col-sm-offset-3">
    <h1 class="text-primary">Contact</h1>

    <div class="spacer spacer-sm"></div>

    <h3>Unité relations patients</h3>

    <p>
      <strong>Valérie Burnier</strong><br>
      Coordinatrice<br>
      <br>
      <strong>Catherine Quentin</strong><br>
      Coordinatrice<br>
      <br>
      <p>
        Pour contacter l'unité :
      </p>
      <a href="mailto:relationspatients@hopitalrivierachablais.ch">relationspatients@hopitalrivierachablais.ch</a>
      <br><br>
    </p>

    <h3>Communication</h3>

    <p>
      <strong>Patricia Claivaz</strong>, responsable<br>
      <br>
      <strong>Marco Danesi</strong><br>
      <br>
      <p>
        Pour contacter l'unité communication :
      </p>
      <a href="mailto:communication@hopitalrivierachablais.ch">communication@hopitalrivierachablais.ch</a>
    </p>

    <div class="spacer spacer-md"></div>

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
