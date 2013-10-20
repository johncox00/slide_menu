ready = ->
  $('#slidebottom button').click ->
    $lefty = $('.inner')
    $lefty.animate left: (if parseInt($lefty.css("left"), 10) is 0 then 200 else 0)

  winW = $(window).width()
  winH = $(window).height()
  $('#slidebottom').css 'width', winW
  $('#slidebottom').css 'height', winH
  $('.inner').css 'width', winW
  $('.inner').css 'height', winH




$(document).ready(ready)
$(document).on 'page:load', ready

$(window).resize ->
  newwidth = $(window).width()
  newheight = $(window).height()
  $("#slidebottom").height(newheight).width newwidth
  $(".inner").height(newheight).width newwidth