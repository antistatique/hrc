'use strict';

/* global jQuery */

var coverCaption = function coverCaption($) {
  if ($('#cover-captioned').length > 0) {
    (function () {
      var $cover = $('#cover-captioned');

      if ($(window).width() > 767) {
        $cover.find('.caption-btn').click(function () {
          $cover.find('.caption-content').toggleClass('open');
        });
      }
    })();
  }
};

coverCaption(jQuery);
'use strict';

/* global jQuery */

var coverCaption = function coverCaption($) {
  var $searchField = $('#search-field');
  $searchField.find('.btn').click(function () {
    $searchField.toggleClass('open');
    $searchField.find('.form-control').focus();
  });
};

coverCaption(jQuery);
'use strict';

/* global jQuery */

var wikiNavInit = function wikiNavInit($) {
  if ($('#tocnav-content').length > 0) {
    (function () {
      var $container = $('#tocnav-content'),
          $list = $('#tocnav-list');

      if ($(window).width() > 767) {

        $container.find('h1, h2, h3, h4, h5, h6').each(function (i) {
          var that = $(this),
              tag = that.prop('tagName').toLowerCase();

          that.attr('id', 'title-' + i);

          $list.append('<li class="toc-item-' + tag + '"><a href="#title-' + i + '">' + that.html() + '</a></li>');
        });
      } else {
        $container.find('h3').each(function (i) {
          $(this).attr({
            class: 'collapsed',
            href: '#collapse-' + i,
            'data-toggle': 'collapse',
            'aria-expanded': false
          }).append('<span class="chevron chevron-up pull-right"></span>');
          $(this).nextUntil('h3').wrapAll('<div class=\'collapse\' id=\'collapse-' + i + '\' />');
        });
      }
    })();
  }
};

wikiNavInit(jQuery);