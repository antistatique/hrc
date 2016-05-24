{% extends "page.html.swig" %}

{% block page_content %}
  {% set object = contentful.contentTypes[contentful.content_type]|get(contentful.id) %}
  {% set content = object.data.fields %}

  {% include '../components/molecules/cover.html.swig' with {
    heading: ' ',
    desc: ' ',
    emergency: true
  } %}

  <div class="spacer spacer-sm"></div>

  {% include '../components/molecules/breadcrumb.html.swig' with {
    links: [
      {"label": "Accueil", "url": "/"},
      {"label": "Hôpital", "url": "#"},
      {"label": "Sites actuels", "url": "#"},
    ],
    current: content.title}
  %}

  <div class="row">
    <div class="col-sm-5 col-md-3">
      {% include '../components/molecules/map.html.swig' with {
        lat: content.location.lat,
        long: content.location.lon
      } %}
    </div>
    <div class="col-sm-7 col-md-9">
      <h1 class="text-primary no-margin">{{content.title}}</h1>
      <div class="spacer spacer-sm"></div>
      <div class="row">
        <div class="col-md-4">
          <h6 class="text-uppercase text-primary">
            <div class="row">
              <div class="col-xs-2">
                <i class="icon icon-envelope icon-circle"></i>
              </div>
              <div class="col-xs-10">
                {{content.address}}
              </div>
            </div>
          </h6>
          <div class="spacer spacer-xs"></div>
          {% include '../components/atoms/phone.html.swig' with {number: content.phone} %}
          <div class="spacer spacer-xs"></div>
          <h6 class="text-uppercase text-primary">
            <div class="row">
              <div class="col-xs-2">
                <i class="icon icon-clock icon-circle"></i>
              </div>
              <div class="col-xs-10">
                Horaires des visites
              </div>
            </div>
          </h6>
          {{content.visitingHours|markdown|raw}}
        </div>
        <div class="col-md-8 text-col-2">
          {{content.servicesList|markdown|raw}}
        </div>
      </div>
    </div>
  </div>
{% endblock %}
