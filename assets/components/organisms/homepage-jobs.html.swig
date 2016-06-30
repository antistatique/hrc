---
title: homepage-jobs
name: homepage-jobs
collection: organisms
notes: |
  ##### Usage : `homepage-jobs`
---
<div class="jobs theme-primary shadow-separator shadow-separator-right">
  <div class="row">
    <div class="col-sm-4 col-sm-offset-1">
      <h2>Emplois</h2>
    </div>
    <div class="col-sm-7">
      <div class="spacer spacer-xs"></div>
      <p>
        Qui dit «Hôpital» pense patient - mais que serait un hôpital sans ses collaborateurs ? Nous cherchons actuellement.
      </p>
    </div>
  </div>

  <div class="spacer spacer-xs"></div>

  <div class="row">
    <div class="col-sm-8">
      <img src="https://unsplash.it/600/550?image=949" alt="jobs" class="img-responsive img-full">
    </div>
    <div class="col-sm-4">
      <div class="row">
        <div class="col-sm-11">
          {% include '../molecules/job-teaser.html.swig' %}
          {% include '../molecules/job-teaser.html.swig' %}
          {% include '../molecules/job-teaser.html.swig' %}
        </div>
      </div>
      <div class="spacer spacer-sm"></div>
      {% include '../atoms/button-link.html.swig' with {label: 'Toutes les offres'} %}
    </div>
  </div>
</div>
