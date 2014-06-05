path = require 'path'
fs   = require 'fs'


module.exports = (grunt) ->

  grunt.loadNpmTasks 'grunt-recess'
  grunt.loadNpmTasks 'grunt-webpack'
  grunt.loadNpmTasks 'grunt-contrib-concat'
  grunt.loadNpmTasks 'grunt-contrib-uglify'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-copy'
  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.loadNpmTasks 'grunt-bower-task'
  
  
  grunt.initConfig () ->
    webpack:
      options:
        entry: 'index.js'
        module:
          preLoaders: [{
            test: '\.js$'
            include: 'client/js/xxx.js'
            loader: 'jshint-loader'
            }]
        output:
          path: 'build/dist/'
        cache: true
        jshint: 
          "validthis": true
          "laxcomma" : true
          "laxbreak" : true
          "browser"  : true
          "eqnull"   : true
          "debug"    : true
          "devel"    : true
          "boss"     : true
          "expr"     : true
          "asi"      : true
          "sub"      : true
        plugins: []
      desktop: 
        module:
          loaders: [
            {test: /\.jade$/ , loader: 'jade-l10n-loader'}
            {test: /\.json$/ , loader: 'json-loader'}
          ]
        output:
          filename: "<%= pkg.name %>-desktop.js"
        optimize:
          minimize: false
        debug: true
        devtool: 'eval'




