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
      {"label": "Services médicaux", "url": "/services-medicaux"}
    ],
    current: content.title}
  %}

  <div class="row">
    <div class="col-sm-4">
      <div class="spacer spacer-sm"></div>
      <div class="tocnav hidden-xs">
        <ul class="list-unstyled" id="tocnav-list"></ul>
      </div>
    </div>
    <div class="col-sm-8 tocnav-content" id="tocnav-content">

      <h1 class="text-primary">{{content.title}}</h1>
      <div class="spacer spacer-xs"></div>
      <div class="theme-primary">
        {{content.body|markdown|raw}}
      </div>

      {% if content.prestation.length > 5 %}
        <hr class="shadow-separator">

        <div class="theme-primary">
          {{content.prestation|markdown|raw}}
        </div>
      {% endif %}

      <div class="spacer spacer-md"></div>

      <div class="row">
        <div class="col-sm-10 col-sm-offset-1">
          <div class="well well-down well-sm text-center">
            <h4>Direction médico-soignante</h4>
          </div>
        </div>
      </div>

      <div class="row row-flex">
        {% for doctor in content.medicalDirection %}

          <div class="col-sm-6 shadow-separator shadow-separator-left shadow-separator-right">
            {% include '../components/molecules/doctor-teaser.html.swig' with {
              img: doctor.fields.image.fields.file.url,
              name: doctor.fields.name,
              job: doctor.fields.function,
              bio: doctor.fields.bio
            } %}
          </div>

          {% if loop.index % 2 == 0 %}
            </div><div class="spacer spacer-md"></div><div class="row">
          {% endif %}

        {% endfor %}
      </div>

      <div class="sapcer spacer-sm"></div>

      <div class="theme-primary">
        {{content.doctorsList|markdown|raw}}
      </div>

    </div>
  </div>

  <div class="spacer spacer-sm"></div>
{% endblock %}
