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

{% include '../molecules/cover.html.swig' with {heading: content.coverTitle, desc: content.coverDesc} %}

<div class="spacer spacer-sm"></div>

<div class="row row-flex row-flex-end">
  <div class="col-sm-6 theme-success">
    {{content.futureSite|markdown|raw}}
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

<div class="spacer spacer-xl"></div>
