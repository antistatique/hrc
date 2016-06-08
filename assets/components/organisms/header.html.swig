---
title: header
name: header
collection: organisms
notes: |
  ##### Usage : `header`
---
<header>
  <div class="row">
    <div class="col-xs-8 col-sm-4">
      <a href="/" class="logo">
        <img src="/build/svg/hrc-logo.svg" onerror="this.onerror=null; this.src='/build/img/hrc-logo.png'" alt="l'hôpital riviera-chablais, vaud-valais (hrc)" class="img-responsive"  />
      </a>
    </div>
    {# <div class="col-sm-8 hidden-xs">
      <div class="text-right">
        <ul class="nav">
          <li><a href="/emplois">Emplois</a></li>
        </ul>
      </div>
    </div> #}
  </div>
  <div class="row">
    <div class="col-sm-8 col-sm-offset-4">
      {% include '../molecules/navbar.html.swig' %}
    </div>
  </div>
</header>
