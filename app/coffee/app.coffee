define [
  'marionette'
], (Mn) ->
  console.log 'I\'m here'

  # Create our Application
  app = new Mn.Application()

  # Start history when our application is ready
  app.on 'start', () ->
    if Backbone.history
      Backbone.history.start()

  ###
  Like other objects in Backbone and Marionette, Applications have an initialize method.
  It is called immediately after the Application has been instantiated, and is invoked with
  the same arguments that the constructor received.
  ###
  app.addInitializer (options) ->
    console.log 'App options', options

  return app
