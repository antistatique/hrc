'use strict';

var gulp          = require('gulp'),
    $             = require('gulp-load-plugins')(),
    config        = require('../gulp_config.json');

module.exports = function() {

 /**
  * Copy favicons in styleguide folder
  */
  gulp.task('statics', function() {
    return gulp.src(config.assets + 'statics/*')
      .pipe(gulp.dest(config.metalsmith.dist));
  });

};
