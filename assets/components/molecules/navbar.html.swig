---
title: navbar
name: navbar
collection: molecules
notes: |
  ##### Usage : `navbar`
---
<nav class="navbar navbar-default">
  <div class="navbar-header">
    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
  </div>

  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <ul class="nav navbar-nav navbar-right">
      <li{% if name == 'homepage' %} class="active"{% endif %}><a href="/">Accueil</a></li>
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Hôpital {% include '../atoms/chevron.html.swig' with {direction: 'down'} %}</a>
        <ul class="dropdown-menu">
          <li {% if name == 'lhopital-riviera-chablais' %} class="active"{% endif %}>
            <a href="/lhopital-riviera-chablais">L’Hôpital Riviera-Chablais</a>
          </li>
          <li role="separator" class="divider"></li>
          <li {% if name == 'sites-actuels' %} class="active"{% endif %}>
            <a href="/sites-actuels">Les sites actuels</a>
          </li>
          <li {% if name == 'site-de-demain' %} class="active"{% endif %}>
            <a href="/site-de-demain">Le site de demain</a>
          </li>
          <li {% if name == 'qui-sommes-nous' %} class="active"{% endif %}>
            <a href="/qui-sommes-nous">Qui sommes-nous ?</a>
          </li>
          <li role="separator" class="divider"></li>
          {% for site in data.hospitals %}
            <li{% if name == site.title|titleToUrl %} class="active"{% endif %}>
              <a href="/{{site.title|titleToUrl}}">{{site.title}}</a>
            </li>
          {% endfor %}
        </ul>
      </li>
      <li{% if name == 'services-medicaux' %} class="active"{% endif %}><a href="/services-medicaux">Services médicaux</a></li>
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Patients et proches {% include '../atoms/chevron.html.swig' with {direction: 'down'} %}</a>
        <ul class="dropdown-menu">
          <li {% if name == 'patients-et-proches' %} class="active"{% endif %}>
            <a href="/patients-et-proches">Patients et proches</a>
          </li>
          <li role="separator" class="divider"></li>
          <li {% if name == 'mode-demploi' %} class="active"{% endif %}>
            <a href="/mode-demploi">Mode d'emploi</a>
          </li>
          <li {% if name == 'securite' %} class="active"{% endif %}>
            <a href="/securite">Sécurité</a>
          </li>
          <li {% if name == 'droits' %} class="active"{% endif %}>
            <a href="/droits">Droits</a>
          </li>
          <li {% if name == 'commission-dethique-clinique' %} class="active"{% endif %}>
            <a href="/commission-dethique-clinique">Commission d’éthique clinique</a>
          </li>
        </ul>
      </li>
      {# <li class="visible-xs{% if name == 'emplois' %} active{% endif %}">
        <a href="/emplois">Emplois</a>
      </li> #}
      <li {% if name == 'contact' %} class="active"{% endif %}>
        <a href="/contact">Contact</a>
      </li>
    </ul>
  </div>
</nav>
