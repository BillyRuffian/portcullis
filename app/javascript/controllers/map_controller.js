import { Controller } from "@hotwired/stimulus"
import "leaflet"
import "leaflet-css"

// Connects to data-controller="map"
var constituency;
var map;

export default class extends Controller {

  static values = { geourl: String }

  connect(){
    map = L.map('map').setView([54, -4], 6);

    var tiles = L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
        maxZoom: 19,
        attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
    }).addTo(map);

    var geo = fetch(this.geourlValue) 
      .then( function (response) {
        return response.json();
      })
      .then( function (json) {
        constituency = L.geoJson(json,{
          style: function(constituency) {
            return {
              color: constituency.geometry.properties.colour,
              opacity: 1.0,
              fillOpacity: 0.5,
              weight: 3
            }
          },
          onEachFeature: onEachFeature
        }).addTo(map);
        map.fitBounds(constituency.getBounds());
      })
    
  }

  disconnect(){
    this.map.remove()
  }

  
}

function highlightFeature(e) {
  var layer = e.target;

  layer.setStyle({
      weight: 5,
      // color: '#666',
      dashArray: '',
      fillOpacity: 0.7
  });

  if (!L.Browser.ie && !L.Browser.opera && !L.Browser.edge) {
      layer.bringToFront();
  }
}

function resetHighlight(e) {
  constituency.resetStyle(e.target);
}

function zoomToFeature(e) {
  map.fitBounds(e.target.getBounds());
}

function onEachFeature(feature, layer) {
  layer.on({
      mouseover: highlightFeature,
      mouseout: resetHighlight,
      // click: zoomToFeature
  });
  if (feature.properties && feature.properties.popup) {
    layer.bindPopup(feature.properties.popup);
  }
}

