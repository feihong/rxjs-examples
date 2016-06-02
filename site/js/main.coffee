
window.section = (title) ->
  $('<h4>').text(title).appendTo($('#output'))


window.print = (text) ->
  $content = $('#output')
  $p = null
  if $content.children().length == 0
    $p = $('<p>').appendTo($content)
  else if $content.find('*').last()[0].tagName == 'H4'
    $p = $('<p>').appendTo($content)
  else
    $p = $content.find('p:last')

  existingText = $p.text()
  $p.text(existingText + ' ' + text)


window.println = (text) ->
  $('<p>').text(text).appendTo($('#output'))
