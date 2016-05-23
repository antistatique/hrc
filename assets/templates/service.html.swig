{% extends "page.html.swig" %}

{% block page_content %}
  {% set object = contentful.contentTypes[contentful.content_type]|get(contentful.id) %}
  {% set content = object.data.fields %}

  {% include '../components/molecules/breadcrumb.html.swig' with {
    links: [
      {"label": "Accueil", "url": "/"},
      {"label": "Services médicaux", "url": "/services-medicaux"}
    ],
    current: content.title}
  %}

  {% include '../components/molecules/cover.html.swig' with {
    heading: content.title,
    desc: ' '
  } %}

  <div class="spacer spacer-sm"></div>

  <div class="row">
    <div class="col-sm-5">
      <div class="spacer spacer-xs"></div>
      {{content.body|markdown|raw}}
    </div>
    <div class="col-sm-6 col-sm-offset-1">
      <h3 class="text-primary">Direction médico-soignante</h3>
      {% for doctor in content.medicalDirection %}

        {% include '../components/molecules/doctor-teaser.html.swig' with {
          img: doctor.fields.image.fields.file.url,
          name: doctor.fields.name,
          job: doctor.fields.function,
          bio: doctor.fields.bio
        } %}

      {% endfor %}
    </div>
  </div>

  <div class="sapcer spacer-sm"></div>

  <div class="theme-primary">
    {{content.doctorsList|markdown|raw}}
  </div>
{% endblock %}
