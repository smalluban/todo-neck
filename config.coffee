exports.config =
  files:
    javascripts:
      joinTo:
        'js/app.js': /^app/
        'js/vendor.js': /(^vendor|bower_components)/
        'test/js/test.js': /^test(\/|\\)(?!vendor)/
        'test/js/test-vendor.js': /^test(\/|\\)(?=vendor)/
      order:
        # Files in `vendor` directories are compiled before other files
        # even if they aren't specified in order.before.
        before: [
          "bower_components/jquery/jquery.js"
          "bower_components/underscore/underscore.js"
          "bower_components/backbone/backbone.js"
        ]

    stylesheets:
      joinTo:
        'css/app.css': /^app/
        'test/css/test.css': /^test/
      order:
        before: []
        after: []

    templates:
      joinTo: 'js/app.js'
