---
title: hospital-item
name: hospital-item
collection: molecules
notes: |
  ##### Usage : `hospital-item`
  ##### Options :
  - **content** - Object (`{title, phone, desc,...}`)
---
<div class="hospital-item">
  <div class="row row-flex">
    {% if content.coverImage.fields.file.url %}
    <div class="col-sm-4 img-focus" style="background-image: url('{{content.coverImage.fields.file.url}}');">
        <img src="{{content.coverImage.fields.file.url}}" alt="{{content.title}}" class="img-responsive sr-only">
    </div>
    <div class="col-sm-8">
    {% else %}
    <div class="col-sm-8 col-sm-offset-4">
    {% endif %}
      {% include '../atoms/block-link.html.swig' with {label: content.title, url: content.title|titleToUrl} %}
      <div class="spacer spacer-xs"></div>
      <div class="row">
        <div class="col-sm-6">
          {% include '../atoms/iconed-item.html.swig' with {
            theme: 'primary',
            icon: 'envelope',
            desc: content.address
          } %}
          {% include '../atoms/phone.html.swig' with {number: content.phone} %}
        </div>
        <div class="col-sm-6">
          {% include '../atoms/iconed-item.html.swig' with {
            theme: 'primary',
            icon: 'clock',
            heading: 'Horaires des visites',
            desc: content.visitingHours
          } %}
          {% include '../atoms/iconed-item.html.swig' with {
            theme: 'warning',
            icon: 'cross',
            heading: 'Urgence 24h/24',
            desc: content.urgence
          } %}
        </div>
      </div>
    </div>
  </div>
</div>
