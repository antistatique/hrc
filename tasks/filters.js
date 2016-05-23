'use strict';

var swig          = require('swig'),
    marked        = require('marked'),
    slug          = require('slug');

module.exports = function() {

  swig.setFilter('markdown', function (string) {
    return marked(string);
  });

  swig.setFilter('slug', function (path) {
    var splited = path.split('/');
    return splited[splited.length-1];
  });

  swig.setFilter('phoneRaw', function (number) {
    var string = number.toString();
    return '0041' + string;
  });

  swig.setFilter('phoneFancy', function (number) {
    var string = number.toString();
    return '0' + string.slice(0, 2) + '&nbsp;' + string.slice(2, 5) + '&nbsp;' + string.slice(5, 7) + '&nbsp;' + string.slice(7);
  });

  swig.setFilter('titleToUrl', function (string) {
    return slug(string).split(' ').join('-').toLowerCase();
  });

  swig.setFilter('dump', function (input) {
    return JSON.stringify(input, null, 2);
  });

  swig.setFilter('get', function (array, value) {
    var obj = {};
    if (array) {
      for (var i = 0; i < array.length; i++) {
        if (array[i].id == value) {
          obj = array[i];
        }
      }
    }
    return obj;
  });

};
