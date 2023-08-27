import { Controller } from "@hotwired/stimulus"
import "leaflet"
import "leaflet-css"

// Connects to data-controller="map"
export default class extends Controller {

  static values = { geourl: String }

  connect(){
    var map = L.map('map').setView([54, -4], 6);

    var tiles = L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
        maxZoom: 19,
        attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
    }).addTo(map);

    var geo = fetch(this.geourlValue) 
      .then( function (response) {
        return response.json();
      })
      .then( function (json) {
        var constituency = L.geoJson(json,{
          style: function(constituency) {
            return {
              color: constituency.geometry.properties.colour,
              opacity: 1.0,
              fillOpacity: 0.6,
              weight: 3
            }
          }
        }).addTo(map);
        map.fitBounds(constituency.getBounds());
      })
    
  }

  disconnect(){
    this.map.remove()
  }
}

