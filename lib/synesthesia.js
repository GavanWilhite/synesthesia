SynesthesiaView = require('./synesthesia-view');

module.exports = {
  activate: function(state){
    atom.workspaceView.command('synesthesia:toggle', this.toggle);
  },

  toggle: function(){
    require('./timbre.js');
    window.syn = {};
    syn.sound = timbre("sin", {freq:300});
    syn.sound.play();

    var freq = 300;
    /*setInterval(function(){
      freq++;
      syn.sound.set({freq:freq});
    }, 20);*/
  }
};
