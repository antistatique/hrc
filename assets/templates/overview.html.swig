{% extends "base.html.swig" %}

{% block content %}
  <div class="row">
    <div class="col-sm-8">
      <h3>Typography</h3>

      <h1>H1 - Heading level 1</h1>
      <h2>H2 - Heading level 2</h1>
      <h3>H3 - Heading level 3</h1>
      <h4>H4 - Heading level 4</h1>
      <h5>H5 - Heading level 5</h1>
      <h6>H6 - Heading level 6</h1>

      <div class="spacer spacer-sm"></div>

      <p>
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sin laboramus, quis est, qui alienae modum statuat industriae? Nummus in Croesi divitiis obscuratur, pars est tamen divitiarum. Praeteritis, inquit, gaudeo. Vide, quantum, inquam, fallare, Torquate. Duo Reges: constructio interrete. Minime vero, inquit ille, consentit. Quod quidem nobis non saepe contingit.
      </p>

      <div class="spacer spacer-sm"></div>

      <i class="icon icon-cross"></i> <code>icon-cross</code>
      <i class="icon icon-envelope"></i> <code>icon-envelope</code>
      <i class="icon icon-phone"></i> <code>icon-phone</code>
      <i class="icon icon-search"></i> <code>icon-search</code>
    </div>
    <div class="col-sm-4">
      <h3>Primary colors</h3>
      <div class="row">
        {% for color in data.colors.primary %}
          <div class="col-sm-6">
            <div style="background: {{color.hexa}};"><div class="spacer"></div></div>
            <div class="text-center well well-sm">
              {{color.name}}
            </div>
          </div>
        {% endfor %}
      </div>
    </div>
  </div>
  <div class="spacer"></div>
{% endblock %}
