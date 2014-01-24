module.exports = function(grunt) {

  // Project configuration.
  grunt.initConfig({

    pkg: grunt.file.readJSON('package.json'),

    concat: {
      dist: {
        src: [
          'themes/homecoming/js/plugins/*.js',
          'themes/homecoming/js/main.js'
        ],
        dest: 'themes/homecoming/js/build/production.js'
      }
    },

    uglify: {
      build: {
        src: ['themes/homecoming/js/build/production.js'],
        dest: 'themes/homecoming/js/build/production.min.js'
      }
    },

    sass: {
      dist: {
        options: {
          style: 'compressed'
        },
        files: {
          'themes/homecoming/css/master.css': 'themes/homecoming/scss/master.scss',
        }
      }
    },

    imagemin: {
      dynamic: {
        files: [{
          expand: true,
          cwd: 'themes/homecoming/images/',
          src: ['**/*.{png,jpg,gif}'],
          dest: 'themes/homecoming/images/'
        }]
      }
    },

    watch: {
      scripts: {
        files: ['themes/homecoming/js/*.js', 'themes/homecoming/js/**/*.js'],
        tasks: ['concat', 'uglify'],
        options: {
          spawn: false,
        }
      },
      css: {
        files: ['themes/homecoming/scss/*.scss', 'themes/homecoming/scss/**/*.scss'],
        tasks: ['sass'],
        options: {
          spawn: false,
        }
      }
    },

  });

  // Load the plugin that provides the "uglify" task.
  grunt.loadNpmTasks('grunt-contrib-concat');
  grunt.loadNpmTasks('grunt-contrib-uglify');
  grunt.loadNpmTasks('grunt-contrib-sass');
  grunt.loadNpmTasks('grunt-contrib-imagemin');
  grunt.loadNpmTasks('grunt-contrib-watch');

  // Default task(s).
  grunt.registerTask('default', ['concat', 'uglify', 'sass', 'watch']);

};