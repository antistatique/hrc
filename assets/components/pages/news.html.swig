---
title: Actualités
name: news
collection: pages
styleguide: false
layout: page.html.swig
---
{% include '../molecules/cover.html.swig' %}

<div class="spacer spacer-sm"></div>

{% include '../molecules/breadcrumb.html.swig' %}

<div class="row theme-primary">
  <div class="col-sm-6 col-sm-offset-3">
    <h1 class="text-primary">{{title}}</h1>

    <div class="spacer spacer-sm"></div>

    {% include '../molecules/news-teaser.html.swig' %}
    {% include '../molecules/news-teaser.html.swig' %}
    {% include '../molecules/news-teaser.html.swig' %}
    {% include '../molecules/news-teaser.html.swig' %}

    <div class="text-center">
      {% include '../molecules/pagination.html.swig' %}
    </div>

    <div class="spacer spacer-sm"></div>
  </div>
</div>
