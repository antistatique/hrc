{% extends "page.html.swig" %}

{% block page_content %}
  {% set object = contentful.contentTypes[contentful.content_type]|get(contentful.id) %}
  {% set content = object.data.fields %}

  {% include '../components/molecules/cover.html.swig' with {
    src: content.coverImage.fields.file.url
  } %}

  <div class="spacer spacer-sm"></div>

  {% include '../components/molecules/breadcrumb.html.swig' with {
    links: [
      {"label": "Accueil", "url": "/"},
      {"label": "Patients et proches", "url": "/patients-et-proches"},
    ],
    current: content.title}
  %}

  <div class="row theme-primary">
    <div class="col-sm-4">
      <div class="spacer spacer-sm"></div>
      <div class="tocnav hidden-xs">
        <ul class="list-unstyled" id="tocnav-list"></ul>
      </div>
    </div>
    <div class="col-sm-8 tocnav-content" id="tocnav-content">
      <h1 class="text-primary">{{content.title}}</h1>
      {{content.body|markdown|raw}}
    </div>
  </div>

  <div class="spacer spacer-sm"></div>

{% endblock %}
