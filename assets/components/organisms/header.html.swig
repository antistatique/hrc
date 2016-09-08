---
title: header
name: header
collection: organisms
notes: |
  ##### Usage : `header`
---
<header>
  <a href="tel:144" class="btn btn-warning btn-emergency visible-xs">
    <i class="icon icon-phone"></i>
    {% if label %}{{label}}{% else %}Urgences vitales 144{% endif %}
  </a>
  <div class="container">
    <div class="row">
      <div class="col-xs-8 col-sm-4">
        <a href="/hrc/" class="logo">
          <img src="/hrc/build/svg/hrc-logo.svg" onerror="this.onerror=null; this.src='/build/img/hrc-logo.png'" alt="l'hôpital riviera-chablais, vaud-valais (hrc)" class="img-responsive"  />
        </a>
      </div>
      <div class="col-sm-8 hidden-xs">
        <div class="text-right">
          <ul class="list-inline">
            <li><a href="/hrc/medias">Médias</a></li>
            <li><a href="/hrc/emplois">Emplois</a></li>
            <li><a href="/hrc/basic-page">Fournisseurs</a></li>
            <li><a href="/hrc/news">Actualités</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-sm-8 col-sm-offset-4">
        {% include '../molecules/navbar.html.swig' %}
      </div>
    </div>
  </div>
</header>
