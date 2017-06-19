module.exports = (grunt) ->

  # Project configuration.
  grunt.initConfig
    connect:
      server:
        options:
          base: './app'
          port: process.env.PORT || 9001,
          open: true

    coffee:
      compile:
        files:
          'app/app.js' : ['app/app.coffee']
          'app/products/products.js' : ['app/products/products.coffee']
          'app/orders/orders.js' : ['app/orders/orders.coffee']
          'app/customers/customers.js' : ['app/customers/customers.coffee']
          'app/suppliers/suppliers.js' : ['app/suppliers/suppliers.coffee']
          'app/manufacturers/manufacturers.js' : ['app/manufacturers/manufacturers.coffee']
          'app/devices/devices.js' : ['app/devices/devices.coffee']
          'app/price-lists/price-lists.js' : ['app/price-lists/price-lists.coffee']
          'app/components/chosen-directive.js' : ['app/components/chosen-directive.coffee']
          'app/components/nav-menu-directive.js' : ['app/components/nav-menu-directive.coffee']
          'app/components/custom-scrollbar-directive.js' : ['app/components/custom-scrollbar-directive.coffee']
          'app/assets/js/custom.js' : ['app/assets/js/custom.coffee']
    sass:
      dist:
        options:
          style: 'expanded'
          sourcemap: 'none'
        files:
          'app/app.css' : 'app/assets/css/app.scss'
    watch:
      app:
        files: '**/*.coffee'
        tasks: ['coffee']
      css:
        files: '**/*.scss'
        tasks: ['sass']


  # These plugins provide necessary tasks.
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-connect'

  # Default task.
  grunt.registerTask 'default', ['connect', 'coffee', 'sass', 'watch']

  # Heroku task.
  grunt.registerTask 'heroku', []
