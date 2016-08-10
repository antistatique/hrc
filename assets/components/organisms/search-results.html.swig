---
title: search-results
name: search-results
collection: organisms
notes: |
  ##### Usage : `search-results`
---
<div class="container">
  <div class="row">
    <div class="col-sm-6 col-sm-offset-3 theme-primary">
      <h1>Recherche <strong>Toxicologie</strong></h1>
      <h4>12 résultats</h4>

      <div class="spacer spacer-sm"></div>

      {% include '../molecules/result-teaser.html.swig' %}
      {% include '../molecules/result-teaser.html.swig' %}
      {% include '../molecules/result-teaser.html.swig' %}
      {% include '../molecules/result-teaser.html.swig' %}
      {% include '../molecules/result-teaser.html.swig' %}

      {% include '../molecules/pagination.html.swig' %}

  </div>
</div>
