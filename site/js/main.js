'use strict';

$(function() {
  $('.button-collapse').sideNav()
});

function section(title) {
  $('<h4>').text(title).appendTo($('#content'))
}

function print(text) {
  $('<p>').text(text).appendTo($('#content'))
}
