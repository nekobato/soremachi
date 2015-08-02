require('./style.less')
GMaps = require('gmaps')

map = null

module.exports =
  template: require('./template.jade')()
  methods:
    geolocate: () ->
      map.geolocate
        success: (position) ->
          map.setCenter(position.coords.latitude, position.coords.longitude)
        error: (error) ->
          alert('Geolocation failed: '+error.message)
        not_supported: () ->
          alert("Your browser does not support geolocation")
        always: () ->
          alert("Done!")
  ready: () ->
    map = new GMaps
      div: '#map'
      lat: 35.604848
      lng: 139.702497

    map.drawOverlay
      lat: 35.604848
      lng: 139.702497
      content: '<div class="avator-pointer"><div class="overlay">my</div></div>'
