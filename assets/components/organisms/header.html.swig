---
title: header
name: header
collection: organisms
notes: |
  ##### Usage : `header`
---
<header>
  <div class="row">
    <div class="col-sm-4">
      <img class="logo" src="/build/svg/hrc-logo.svg" onerror="this.onerror=null; this.src='/build/img/hrc-logo.png'" alt="l'hôpital riviera-chablais, vaud-valais (hrc)" class="img-responsive"  />
    </div>
    <div class="col-sm-8">
      <div class="text-right">
        <ul class="nav">
          <li><a href="#">Emplois</a></li>
        </ul>
      </div>
      {% include '../molecules/navbar.html.swig' %}
    </div>
  </div>
</header>
