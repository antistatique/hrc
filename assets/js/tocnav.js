/* global jQuery */

const wikiNavInit = ($) => {
  if ($('#tocnav-content').length > 0) {
    const $container = $('#tocnav-content'),
          $list = $('#tocnav-list');

    $container.find('h1, h2, h3, h4, h5, h6').each(function(i) {
      const that = $(this),
            tag = that.prop('tagName').toLowerCase();

      that.attr('id', `title-${i}`);

      $list.append(`<li class="toc-item-${tag}"><a href="#title-${i}">${that.html()}</a></li>`);
    });
  }
};

wikiNavInit(jQuery);
