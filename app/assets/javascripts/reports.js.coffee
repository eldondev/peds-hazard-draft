# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#

$ () -> 
  console.log 'here'
  $.getScript 'http://www.openlayers.org/api/OpenLayers.js'
  $("#renderMap").click ->
    d = $("#someFrame")[0].contentWindow.document; 
    d.open
    d.close
    $("body", d).append "<div id=\"demoMap\"></div>

