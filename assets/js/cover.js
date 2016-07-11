/* global jQuery */

const coverCaption = ($) => {
  if ($('#cover-captioned').length > 0) {
    const $cover = $('#cover-captioned');


    if ($(window).width() > 767) {
      $cover.find('.caption-btn').click(function(){
        $cover.find('.caption-content').toggleClass('open');
      });
    }
  }
};

coverCaption(jQuery);
