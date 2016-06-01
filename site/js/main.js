'use strict';

$(function() {
  $('.button-collapse').sideNav()
});

function section(title) {
  $('<h4>').text(title).appendTo($('#content'))
}

function print(text) {
  var $content = $('#content')
  var $p = null
  if ($content.children().length === 0) {
    $p = $('<p>').appendTo($content)
  } else if ($content.find('*').last()[0].tagName === 'H4') {
    $p = $('<p>').appendTo($content)
  } else {
    $p = $content.find('p:last')
  }
  var existingText = $p.text()
  $p.text(existingText + ' ' + text)
}

function println(text) {
  $('<p>').text(text).appendTo($('#content'))
}
