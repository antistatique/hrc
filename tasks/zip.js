'use strict';

var gulp          = require('gulp'),
    $             = require('gulp-load-plugins')(),
    config        = require('../gulp_config.json');

module.exports = function() {

 /**
  * Deploy to GH pages
  */
  gulp.task('zip', function () {
    return gulp.src(config.app.ghpages + '/**/*')
      .pipe($.zip('archive.zip'))
      .pipe(gulp.dest(config.metalsmith.dist));
  });

};
