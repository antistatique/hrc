/* global jQuery */

const wikiNavInit = ($) => {
  if ($('#tocnav-content').length > 0) {
    const $container = $('#tocnav-content'),
          $list = $('#tocnav-list');

    if ($(window).width() > 767) {

      $container.find('h1, h2, h3, h4, h5, h6').each(function(i) {
        const that = $(this),
              tag = that.prop('tagName').toLowerCase();

        that.attr('id', `title-${i}`);

        $list.append(`<li class="toc-item-${tag}"><a href="#title-${i}">${that.html()}</a></li>`);
      });
    } else {
      $container.find('h3').each(function (i) {
        $(this)
          .attr({
            class: 'collapsed',
            href: `#collapse-${i}`,
            'data-toggle': 'collapse',
            'aria-expanded': false
          })
          .append('<span class="chevron chevron-up pull-right"></span>');
        $(this).nextUntil('h3').wrapAll(`<div class='collapse' id='collapse-${i}' />`);
      });
    }
  }
};

wikiNavInit(jQuery);
