# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#

$ () -> 
  console.log 'here'
  $.getScript 'http://www.openlayers.org/api/OpenLayers.js'
  $("#renderMap").click ->
    $("#mapFrameDiv")[0].innerHTML = '<iframe id="demoMap" src="/map.html" style="height:270px" class="span9"></iframe>'
    console.log "Doin' it"

