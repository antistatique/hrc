---
title: consultations
name: consultations
collection: organisms
notes: |
  ##### Usage : `consultations`
---
<div class="row">
  <div class="col-sm-5">
    <h1 class="text-primary">Annuaire des consultations</h1>
    <p>
      Les hôpitaux riviera chablais comprennent des services de médecines générales et des services spécialisés. Vous pouvez consulter nos médecins.
    </p>
    <div class="spacer spacer-sm"></div>
    <div class="well">
      {% include '../molecules/search.html.swig' %}
      <p class="text-center">
        ou
      </p>
      {% include '../atoms/dropdown.html.swig' %}
    </div>
  </div>
  <div class="col-sm-6 col-sm-offset-1">
    <div class="spacer spacer-sm"></div>
    <h5><strong>3 résultats pour « Anésthésiologie »</strong></h5>
    <div class="theme-primary">
      {% include '../molecules/consultation-teaser.html.swig' %}
      {% include '../molecules/consultation-teaser.html.swig' %}
      {% include '../molecules/consultation-teaser.html.swig' %}
    </div>
  </div>
</div>
