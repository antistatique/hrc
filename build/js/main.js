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

/* global jQuery, PhotoSwipe, PhotoSwipeUI_Default */

var gallery = function gallery($) {
  if ($('#gallery').length > 0) {
    (function () {

      // Init empty gallery array
      var container = [];

      // Loop over gallery items and push it to the array
      $('#gallery').find('figure').each(function () {
        var $link = $(this).find('a'),
            item = {
          src: $link.attr('href'),
          w: $link.data('width'),
          h: $link.data('height'),
          title: $link.data('caption')
        };
        container.push(item);
      });

      // Define click event on gallery item
      $('#gallery a').click(function (event) {
        // Prevent location change
        event.preventDefault();
        // Define object and gallery options
        var $pswp = $('.pswp')[0],
            options = {
          index: $(this).parent('figure').index(),
          bgOpacity: 0.9,
          showHideOpacity: true,
          shareButtons: [{ id: 'download', label: 'Télécharger', url: '{{raw_image_url}}', download: true }]
        };
        // Initialize PhotoSwipe
        var gallery = new PhotoSwipe($pswp, PhotoSwipeUI_Default, container, options);
        gallery.init();
      });
    })();
  }
};

gallery(jQuery);
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

      new $.Zebra_Pin($('#tocnav'), {
        top_spacing: 15,
        contain: true
      });

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