
window.section = (title) ->
  $('<h2>').text(title).appendTo($('#output'))


window.print = (text) ->
  $content = $('#output')
  $p = null
  if $content.children().length == 0
    $p = $('<p>').appendTo($content)
  else if $content.find('*').last()[0].tagName == 'H2'
    $p = $('<p>').appendTo($content)
  else
    $p = $content.find('p:last')

  $('<span>').text(text).appendTo($p)


window.println = (text) ->
  $('<p>').text(text).appendTo($('#output'))


examples = []
running = false

window.example = (title, fn) ->
  callback = () ->
    section(title)
    dfd = jQuery.Deferred()
    dfd.then () ->
      if examples.length > 0
        newCallback = examples.shift()
        newCallback()
      else
        running = false
    fn(dfd.resolve)

  if running
    examples.push callback
  else
    running = true
    callback()
