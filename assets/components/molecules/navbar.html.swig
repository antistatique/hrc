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
          <li><a href="#">Action</a></li>
        </ul>
      </li>
      <li><a href="#">Services médicaux</a></li>
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Patients et proches {% include '../atoms/chevron.html.swig' with {direction: 'down'} %}</a>
        <ul class="dropdown-menu">
          <li><a href="#">Action</a></li>
        </ul>
      </li>
      <li><a href="#">Contact</a></li>
    </ul>
  </div>
</nav>
