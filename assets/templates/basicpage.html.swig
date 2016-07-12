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
      {"label": "L’Hôpital Riviera-Chablais", "url": "/lhopital-riviera-chablais"},
      {"label": "Qui sommes-nous ?", "url": "/qui-sommes-nous"}
    ],
    current: content.title}
  %}

  <h1 class="text-primary">{{content.title}}</h1>

  <div class="spacer spacer-sm"></div>

  <div class="row theme-primary">
    <div class="col-sm-12">
      <div class="text-col-2">
        {{content.body|markdown|raw}}
      </div>
    </div>
  </div>

  <div class="spacer"></div>

{% endblock %}
