---
title: Homepage
name: homepage
global_home: true
styleguide: false
layout: page.html.swig
contentful:
  space_id: fbqunpc2pjfz
  content_type: homepage
  id: 4B2AcBjWqIEuSI0oqCcKyg
---
{% set object = contentful.contentTypes[contentful.content_type]|get(contentful.id) %}
{% set content = object.data.fields %}

{% include '../molecules/cover.html.swig' with {
  src: 'https://images.contentful.com/fbqunpc2pjfz/1lJacxX2zqAs2GAkUYw6E8/2627d12dc35bdc522684f1be53e1de4c/hrc_coverhp.jpg',
  emergency: true
} %}

<div class="spacer spacer-sm"></div>

<div class="row">
  <div class="col-sm-6">
    <h1 class="text-primary">
      {{content.coverTitle}}
    </h1>
    <p>
      {{content.coverDesc|markdown|raw}}
    </p>
  </div>
  <div class="col-sm-6">
    <h3 class="text-primary">{{content.sitesTitle}}</h3>
    <div class="row">
      {% for site in content.sitesRelated %}
        <div class="col-sm-4">
          {% include '../molecules/hospital-teaser.html.swig' with {content: site.fields} %}
        </div>
        {% if loop.index % 3 == 0 %}
          </div><div class="row">
        {% endif %}
      {% endfor %}
    </div>
  </div>
</div>

<div class="spacer spacer-sm"></div>
{% include '../atoms/shadow-separator.html.swig' %}

<div class="row row-flex row-flex-end">
  <div class="col-sm-6 theme-success">
    {{content.futureSite|markdown|raw}}
  </div>
</div>

<div class="spacer spacer-sm"></div>

<div class="row">
  {% include '../molecules/large-teaser.html.swig' with {
    src: 'http://images.contentful.com/fbqunpc2pjfz/2o0uzZTaeY04uEQKYUwKSi/93839247e6bffcc136264bcab99dbb63/CoverSitedemain.jpg',
    url: 'site-de-demain',
    label: 'En savoir plus sur le nouvel hôpital',
    theme: 'success'
  } %}
</div>

<div class="row">
  <div class="col-sm-10 col-sm-offset-1">
    {% include '../molecules/well.html.swig' with {
      up: true,
      content: content.quote
    } %}
  </div>
</div>

<div class="spacer spacer-md"></div>
{% include '../organisms/homepage-consultation.html.swig' %}
<div class="spacer"></div>
<div class="row">
  <div class="col-sm-7">
    {% include '../organisms/homepage-jobs.html.swig' %}
    <div class="spacer"></div>
  </div>
  <div class="col-sm-5">
    <h2 class="text-primary">Actualités</h2>
    <div class="spacer spacer-sm"></div>
    {% include '../molecules/news-teaser.html.swig' %}
    {% include '../molecules/news-teaser.html.swig' %}
    <div class="spacer spacer-sm"></div>
    <div class="row">
      <div class="col-sm-7">
        {% include '../atoms/button-link.html.swig' with {label: 'Toutes les actualités'} %}
      </div>
    </div>
  </div>
</div>
<div class="spacer spacer-md"></div>
