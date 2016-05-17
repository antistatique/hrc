{% extends "base.html.swig" %}

{% block content %}
  <h2>Primary colors</h2>
  <div class="row">
    {% for color in data.colors.primary %}
      <div class="col-sm-3">
        <div style="background: {{color.hexa}};"><br><br><br><br><br></div>
        <div class="text-center well">
          {{color.name}}
        </div>
      </div>
    {% endfor %}
  </div>
{% endblock %}
