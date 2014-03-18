SynesthesiaView = require("./synesthesia-view")
module.exports =
  activate: (state) ->
    atom.workspaceView.command "synesthesia:toggle", @toggle
    return

  toggle: ->
    require "./timbre.js"
    window.syn = {}
    syn.sound = timbre "sin",
      freq: 300

    syn.sound.play()
    freq = 300
    return

#setInterval(function(){
#      freq++;
#      syn.sound.set({freq:freq});
#    }, 20);
