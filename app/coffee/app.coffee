define [
  'jquery'
  'hammerjs'
], ($, Hammer) ->
  console.log 'I\'m here'

  myElement = document.getElementById('c-logo')

  mc = new Hammer(myElement)

  mc.on("panleft panright tap press", (ev) ->
    ev.preventDefault()
    document.getElementById('c-text').innerText = ev.type + ' gesture detected.'
  )

  blue = document.getElementById('c-blue')

  Hammer(blue).on('swipeleft', ->
    $(blue).animate({left: '-=100'}, 500)
  )

  Hammer(document.getElementById('c-blue')).on('swiperight', ->
    $(blue).animate({left: '+=100'}, 500)
  )
