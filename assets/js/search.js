/* global jQuery */

const coverCaption = ($) => {
  const $searchField = $('#search-field');
  $searchField.find('.btn').click(function(){
    $searchField.toggleClass('open');
    $searchField.find('.form-control').focus();
  });
};

coverCaption(jQuery);
