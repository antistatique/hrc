{% extends "page.html.swig" %}

{% block page_content %}
  {% set hospitals = contentful.contentTypes[contentful.content_type] %}
  {% set object = hospitals|get(contentful.id) %}
  {% set content = object.data.fields %}

  {% include '../components/molecules/cover.html.swig' with {
    src: content.coverImage.fields.file.url,
    emergency: true
  } %}

  <div class="spacer spacer-sm"></div>

  {% include '../components/molecules/breadcrumb.html.swig' with {
    links: [
      {"label": "Accueil", "url": "/"},
      {"label": "Hôpital", "url": "/lhopital-riviera-chablais"},
      {"label": "Sites actuels", "url": "#"},
    ],
    current: content.title}
  %}

  <div class="row">
    <div class="col-sm-5 col-md-4">
      {% include '../components/molecules/map.html.swig' with {
        lat: content.location.lat,
        long: content.location.lon
      } %}
    </div>
    <div class="col-sm-7 col-md-8">
      <h1 class="text-primary no-margin">{{content.title}}</h1>
      <div class="spacer spacer-sm"></div>
      <div class="row">
        <div class="col-md-4">
          {% include '../components/atoms/iconed-item.html.swig' with {
            theme: 'primary',
            icon: 'envelope',
            heading: content.address
          } %}
          {% include '../components/atoms/phone.html.swig' with {number: content.phone} %}
          {% if content.numberEmergency %}
            {% include '../components/atoms/iconed-item.html.swig' with {
              theme: 'warning',
              icon: 'cross',
              heading: content.numberEmergency|phoneFancy|raw
            } %}
          {% endif %}
          {% include '../components/atoms/iconed-item.html.swig' with {
            theme: 'primary',
            icon: 'clock',
            heading: 'Horaires des visites'
          } %}
          {{content.visitingHours|markdown|raw}}
        </div>
        <div class="col-md-8 text-col-2">
          {{content.servicesList|markdown|raw}}
        </div>
      </div>
    </div>
  </div>

  <div class="spacer spacer-sm"></div>
  {% include '../components/atoms/shadow-separator.html.swig' %}

  <div class="spacer spacer-xs"></div>
  <h2 class="text-primary">
    Les sites actuels
  </h2>

  <div class="spacer spacer-md"></div>

  <div class="row">
    <div class="col-sm-4">
      <img src="/build/img/map.jpg" class="img-responsive img-full">
    </div>
    <div class="col-sm-6">
      {% for hospital in hospitals %}
        {% include '../components/molecules/hospital-item.html.swig' with {
          content: hospital.data.fields,
          nothumb: true
        } %}
      {% endfor %}
    </div>
  </div>
{% endblock %}
