'use strict'

Vue = require('vue')

require('style.less')

new Vue
  option:
    debug: true
  el: "#app"
  replace: true
  data:
    current_view: "map_component"
  components:
    map_component: require('components/map')
    header_component: require('components/header')
    footer_component: require('components/footer')
  methods: {}
  ready: () ->
    console.log 'app is ready'

# page '/', () ->
