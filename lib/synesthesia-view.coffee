{View} = require 'atom'

module.exports =
class SynesthesiaView extends View
  @content: ->
    @div class: 'synesthesia overlay from-top', =>
      @div "The Synesthesia package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "synesthesia:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "SynesthesiaView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
