'use strict'

require.config
  paths:

    # jQuery
    jquery: '../../bower_components/jquery/dist/jquery'

    # Plugins
    hammerjs: '../../bower_components/hammerjs/hammer'

    ###
      For future purposes
    ###

    # Backbone and Marionette components
    underscore: '../../bower_components/underscore/underscore'
    backbone: '../../bower_components/backbone/backbone'
    'backbone.babysitter': '../../bower_components/backbone.babysitter/lib/backbone.babysitter'
    'backbone.queryparams': '../../bower_components/backbone-query-parameters/backbone.queryparams'
    'backbone.queryparams-1.1-shim': '../../bower_components/backbone-query-parameters/backbone.queryparams-1.1-shim'
    'backbone.wreqr': '../../bower_components/backbone.wreqr/lib/backbone.wreqr'
    marionette: '../../bower_components/marionette/lib/core/backbone.marionette'

  shim:
    underscore:
      exports: '_'

    backbone:
      deps: ['underscore']
      exports: 'Backbone'

    'backbone.babysitter':
      deps: ['backbone', 'underscore']

    'backbone.wreqr':
      deps: ['backbone', 'underscore']

    marionette:
      deps: ['backbone']
      exports: 'Marionette'

require([
  'app'
  ]
)
