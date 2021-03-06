# additional required can live here, but we don't need them sice
# we're using require.js
require.config
  paths:
    underscore: "lib/underscore"
    backbone: "lib/backbone"
    marionette: "lib/backbone.marionette"
    jquery: "lib/jquery.min"
    tpl: "lib/tpl"

  shim:
    "lib/backbone-localStorage": ["backbone"]
    underscore:
      exports: "_"

    backbone:
      exports: "Backbone"
      deps: ["jquery", "underscore"]

    marionette:
      exports: "Backbone.Marionette"
      deps: ["backbone"]

  deps: ["jquery", "underscore"]

require ["app", "backbone", "routers/index", "controllers/index"], (app, Backbone, Router, Controller) ->
  "use strict"
  app.start()
  new Router(controller: Controller)
  Backbone.history.start()