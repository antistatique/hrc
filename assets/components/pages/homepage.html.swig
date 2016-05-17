---
title: Homepage
name: homepage
global_home: true
styleguide: false
layout: page.html.swig
---
<div class="container">
  <h1>Hello HRC !</h1>
  {% include '../atoms/button-link.html.swig' with {label: 'bisou'} %}
</div>
