module.exports =
class SoundEffects
  require "./timbre.js"
  window.T = timbre

  # E.g., sound that sounds like a wave
  @wave = ->
    T("sin", 523.25).play()
