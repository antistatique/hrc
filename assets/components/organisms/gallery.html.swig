---
title: gallery
name: gallery
collection: organisms
notes: |
  ##### Usage : `gallery`
---
<!-- Galley wrapper that contains all items -->
<div id="gallery" class="gallery row" itemscope itemtype="http://schema.org/ImageGallery">
  {% for i in [1, 2, 3, 4, 5] %}
    <figure itemprop="associatedMedia" itemscope itemtype="http://schema.org/ImageObject" class="col-xs-4">
      <a href="https://unsplash.it/1200/900/?image=90{{i}}" data-width="1200" data-height="900" itemprop="contentUrl">
        <img src="https://unsplash.it/400/300/?image=90{{i}}" itemprop="thumbnail" alt="Image description" class="img-responsive img-full">
      </a>
    </figure>
  {% endfor %}
</div>

{% include './photoswipe-wrapper.html.swig' %}
