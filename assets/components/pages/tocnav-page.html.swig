---
title: Page avec navigation interne
name: tocnav-page
collection: pages
styleguide: false
layout: page.html.swig
contentful:
  space_id: fbqunpc2pjfz
  content_type: basicPage
  id: 1vdGwDnlIM6aKq4ugceUks
---
{% set object = contentful.contentTypes[contentful.content_type]|get(contentful.id) %}
{% set content = object.data.fields %}

{% include '../molecules/cover.html.swig' with {
  src: content.coverImage.fields.file.url
} %}

<div class="spacer spacer-sm"></div>

{% include '../molecules/breadcrumb.html.swig' with %}

<div class="row row-flex theme-primary">
  <div class="col-sm-4">
    <div class="spacer spacer-sm"></div>
    <div class="tocnav hidden-xs" id="tocnav">
      <ul class="list-unstyled" id="tocnav-list"></ul>
    </div>
  </div>
  <div class="col-sm-8 tocnav-content" id="tocnav-content">
    <h1 class="text-primary">{{title}}</h1>
    {{content.body|markdown|raw}}
  </div>
</div>

<div class="spacer spacer-sm"></div>
