{% extends "page.html.swig" %}

{% block page_content %}
  {% set object = contentful.contentTypes[contentful.content_type]|get(contentful.id) %}
  {% set content = object.data.fields %}

  {% include '../components/molecules/cover.html.swig' with {
    src: content.coverImage.fields.file.url,
    heading: content.title,
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

  <div class="row theme-primary">
    <div class="col-sm-8">
      {{content.body|markdown|raw}}
    </div>
  </div>

  <div class="spacer spacer-sm"></div>

{% endblock %}
