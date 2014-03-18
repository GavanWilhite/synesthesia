SynesthesiaView = require("./synesthesia-view")
window.syn = {}
window.syn.SoundEffects = require("./sound_effects")
window.syn.Parser = require("./parser")

console.log(syn.Parser)

module.exports =
  activate: (state) ->
    atom.workspaceView.command "synesthesia:toggle", @toggle
    return

  toggle: ->
    parser = new window.syn.Parser
    parser.analyze()
    return
