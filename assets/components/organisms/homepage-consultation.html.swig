---
title: homepage-consultation
name: homepage-consultation
collection: organisms
notes: |
  ##### Usage : `homepage-consultation`
---
<div class="homepage-consultation">
  <div class="row">
    <div class="col-sm-6">
      <img src="https://unsplash.it/900/900?image=949" alt="Consultations" class="img-responsive img-full">
    </div>
    <div class="col-sm-6">
      <div class="spacer"></div>
      <h2 class="text-primary">Consultations médicales</h2>
      <div class="spacer spacer-xs"></div>
      <div class="well well-left">
        <p>
          <small>Les hôpitaux riviera chablais comprennent des servieces de médecines générales et des services spécialisés. Vous pouvez consulter nos médecins.</small>
        </p>
        <div class="row">
          <div class="col-sm-6">
            {% include '../molecules/search.html.swig' %}
          </div>
          <div class="col-xs-2 col-sm-1">
            <div class="spacer spacer-xs"></div>
            <span class="text-uppercase">OU</span>
          </div>
          <div class="col-xs-10 col-sm-5">
            {% include '../atoms/dropdown.html.swig' %}
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
