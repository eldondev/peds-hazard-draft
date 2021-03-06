$.getScript 'http://www.openlayers.org/api/OpenLayers.js', () ->
  lat            = 33.7553;
  lon            = -84.3799;
  zoom           = 10;

  fromProjection = new OpenLayers.Projection "EPSG:4326"   
  toProjection   = new OpenLayers.Projection "EPSG:900913"
  position       = new OpenLayers.LonLat(lon, lat).transform( fromProjection, toProjection);

  map = new OpenLayers.Map("demoMapDiv");
  mapnik         = new OpenLayers.Layer.OSM();
  map.addLayer(mapnik);

  markers = new OpenLayers.Layer.Markers( "Markers" );
  map.addLayer(markers);
  map.setCenter(position, zoom);
  alertWhere = (e) ->
    lonlat = map.getLonLatFromViewPortPixel e.xy
    alert "You clicked near " + lonlat.lat + " N, " + + lonlat.lon + " E"
  click = new OpenLayers.Control();
  click.handler = new OpenLayers.Handler.Click(click, { 'click': alertWhere });
  OpenLayers.Util.extend(click, { draw : () -> });
  console.log 1
  map.addControl(click);
  console.log 2
  click.activate();
  console.log "Map it up!"
