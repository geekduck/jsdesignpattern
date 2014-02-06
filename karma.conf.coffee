# Karma configuration
# Generated on Fri Feb 07 2014 02:07:21 GMT+0900 (JST)

module.exports = (config) ->
  config.set

    # base path, that will be used to resolve all patterns, eg. files, exclude
    basePath: ''

    # preprocessors
    preprocessors:
      '**/*.coffee': ['coffee']

    coffeePreprocessor: 
      # options passed to the coffee compiler
      options: 
        bare: true,
        sourceMap: true
      # transforming the filenames
      transformPath: (path) ->
        path.replace /\.coffee$/, '.js'

    # frameworks to use
    frameworks: ['jasmine', 'requirejs']

    # list of files / patterns to load in the browser
    files: [
      {pattern: 'src/**/*.coffee', included: false}
      {pattern: 'test/spec/*Spec.coffee', included: false}
      'test/test-main.coffee'
    ]

    # list of files to exclude
    exclude: [
      
    ]

    # test results reporter to use
    # possible values: 'dots', 'progress', 'junit', 'growl', 'coverage'
    reporters: ['progress']

    # web server port
    port: 9876

    # enable / disable colors in the output (reporters and logs)
    colors: true

    # level of logging
    # possible values: config.LOG_DISABLE || config.LOG_ERROR || config.LOG_WARN || config.LOG_INFO || config.LOG_DEBUG
    logLevel: config.LOG_INFO

    # enable / disable watching file and executing tests whenever any file changes
    autoWatch: true

    # Start these browsers, currently available:
    # - Chrome
    # - ChromeCanary
    # - Firefox
    # - Opera (has to be installed with `npm install karma-opera-launcher`)
    # - Safari (only Mac; has to be installed with `npm install karma-safari-launcher`)
    # - PhantomJS
    # - IE (only Windows; has to be installed with `npm install karma-ie-launcher`)
    browsers: [
      'Chrome'#,
      #'PhantomJS'
    ]

    # If browser does not capture in given timeout [ms], kill it
    captureTimeout: 60000

    # Continuous Integration mode
    # if true, it capture browsers, run tests and exit
    singleRun: false
