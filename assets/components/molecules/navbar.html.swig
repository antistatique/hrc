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

  <div class="collapse navbar-collapse in" id="bs-example-navbar-collapse-1">
    <ul class="nav navbar-nav navbar-right">
      <li class="active"><a href="/">Accueil</a></li>
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Hôpital {% include '../atoms/chevron.html.swig' with {direction: 'down'} %}</a>
        <ul class="dropdown-menu">
          <li>
            <a href="/content-teasers">L’Hôpital Riviera-Chablais</a>
          </li>
          <li role="separator" class="divider"></li>
          <li>
            <a href="/sites-actuels">Les sites actuels</a>
          </li>
          <li>
            <a href="/site-de-demain">Le site de demain</a>
          </li>
          <li>
            <a href="/content-teasers">Qui sommes-nous ?</a>
          </li>
          <li role="separator" class="divider"></li>
          {% for site in data.hospitals %}
            <li>
              <a href="/hospital">{{site.title}}</a>
            </li>
          {% endfor %}
        </ul>
      </li>
      <li><a href="/content-teasers">Services médicaux</a></li>
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Patients et proches {% include '../atoms/chevron.html.swig' with {direction: 'down'} %}</a>
        <ul class="dropdown-menu">
          <li>
            <a href="/content-teasers">Patients et proches</a>
          </li>
          <li role="separator" class="divider"></li>
          <li>
            <a href="/tocnav-page">Séjour à l'hôpital</a>
          </li>
          <li>
            <a href="/tocnav-page">Sécurité</a>
          </li>
          <li>
            <a href="/tocnav-page">Droits</a>
          </li>
          <li>
            <a href="/basic-page">Commission d’éthique clinique</a>
          </li>
        </ul>
      </li>
      {# <li class="visible-xs{% if name == 'emplois' %} active{% endif %}">
        <a href="/emplois">Emplois</a>
      </li> #}
      <li>
        <a href="/contact">Contact</a>
      </li>
      {% if styleguide %}
        {% include '../atoms/search-field.html.swig' %}
      {% endif %}
    </ul>
  </div>
</nav>
