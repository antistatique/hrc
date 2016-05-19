{% extends "base.html.swig" %}

{% block content %}
  {% set path = '../components/pages/' + name + '.html.swig' %}
  <div class="container">
    {% include '../components/organisms/header.html.swig' %}
    {% include path %}
  </div>
{% endblock %}

{% block javascripts %}
{% endblock %}
