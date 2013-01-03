lat            = 47.35387;
lon            = 8.43609;
zoom           = 18;

fromProjection = new OpenLayers.Projection "EPSG:4326"   
toProjection   = new OpenLayers.Projection "EPSG:900913"
position       = new OpenLayers.LonLat(lon, lat).transform( fromProjection, toProjection);

map = new OpenLayers.Map("demoMap");
mapnik         = new OpenLayers.Layer.OSM();
map.addLayer(mapnik);

markers = new OpenLayers.Layer.Markers( "Markers" );
map.addLayer(markers);
markers.addMarker(new OpenLayers.Marker(position));
map.setCenter(position, zoom);
console.log "Map it up!"
