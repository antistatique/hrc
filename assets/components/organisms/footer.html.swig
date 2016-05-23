---
title: footer
name: footer
collection: organisms
notes: |
  ##### Usage : `footer`
---
<footer>
  <div class="container">
    <div class="row">
      {% for site in data.hospitals %}
        <div class="col-sm-4 col-lg-2">
          {% include '../molecules/hospital-teaser.html.swig' with {content: site} %}
        </div>
      {% endfor %}
    </div>
  </div>
  <div class="sign-bar">
    <div class="container text-center">
      Une réalisation <a href="http://antistatique.net">Antistatique</a>
    </div>
  </div>
</footer>
