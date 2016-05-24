{% extends "base.html.swig" %}

{% block content %}
  {% set path = '../components/pages/' + name + '.html.swig' %}
  <div class="container">
    {% include '../components/organisms/header.html.swig' %}
    <div class="content">
      {% block page_content %}
        {% include path %}
      {% endblock %}
    </div>
  </div>
  {% include '../components/organisms/footer.html.swig' %}
{% endblock %}

{% block javascripts %}
{% endblock %}
