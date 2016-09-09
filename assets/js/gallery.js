/* global jQuery, PhotoSwipe, PhotoSwipeUI_Default */

const gallery = ($) => {
  if ($('#gallery').length > 0) {

    // Init empty gallery array
    const container = [];

    // Loop over gallery items and push it to the array
    $('#gallery').find('figure').each(function(){
      const $link = $(this).find('a'),
            item = {
              src: $link.attr('href'),
              w: $link.data('width'),
              h: $link.data('height'),
              title: $link.data('caption')
            };
      container.push(item);
    });

    // Define click event on gallery item
    $('a').click(function(event){
      // Prevent location change
      event.preventDefault();
      // Define object and gallery options
      const $pswp = $('.pswp')[0],
            options = {
              index: $(this).parent('figure').index(),
              bgOpacity: 0.9,
              showHideOpacity: true,
              shareButtons: [
                {id:'download', label:'Télécharger', url:'{{raw_image_url}}', download:true}
              ]
            };
      // Initialize PhotoSwipe
      const gallery = new PhotoSwipe($pswp, PhotoSwipeUI_Default, container, options);
      gallery.init();
    });

  }
};

gallery(jQuery);
