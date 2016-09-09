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
      <li class="active"><a href="/hrc/">Accueil</a></li>
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Hôpital {% include '../atoms/chevron.html.swig' with {direction: 'down'} %}</a>
        <ul class="dropdown-menu">
          <li>
            <a href="/hrc/content-teasers">L’Hôpital Riviera-Chablais</a>
          </li>
          <li role="separator" class="divider"></li>
          <li>
            <a href="/hrc/sites-actuels">Les sites actuels</a>
          </li>
          <li>
            <a href="/hrc/site-de-demain">Le site de demain</a>
          </li>
          <li>
            <a href="/hrc/content-teasers">Qui sommes-nous ?</a>
          </li>
          <li role="separator" class="divider"></li>
          {% for site in data.hospitals %}
            <li>
              <a href="/hrc/hospital">{{site.title}}</a>
            </li>
          {% endfor %}
        </ul>
      </li>
      <li><a href="/hrc/content-teasers">Services médicaux</a></li>
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Patients et proches {% include '../atoms/chevron.html.swig' with {direction: 'down'} %}</a>
        <ul class="dropdown-menu">
          <li>
            <a href="/hrc/content-teasers">Patients et proches</a>
          </li>
          <li role="separator" class="divider"></li>
          <li>
            <a href="/hrc/tocnav-page">Séjour à l'hôpital</a>
          </li>
          <li>
            <a href="/hrc/tocnav-page">Sécurité</a>
          </li>
          <li>
            <a href="/hrc/tocnav-page">Droits</a>
          </li>
          <li>
            <a href="/hrc/basic-page">Commission d’éthique clinique</a>
          </li>
        </ul>
      </li>

      <li class="visible-xs"><a href="/hrc/medias">Médias</a></li>
      <li class="visible-xs"><a href="/hrc/emplois">Emplois</a></li>
      <li class="visible-xs"><a href="/hrc/fournisseurs">Fournisseurs</a></li>
      <li class="visible-xs"><a href="/hrc/news">Actualités</a></li>

      <li>
        <a href="/hrc/contact">Contact</a>
      </li>
      {% if styleguide %}
        {% include '../atoms/search-field.html.swig' %}
      {% endif %}
    </ul>
  </div>
</nav>
