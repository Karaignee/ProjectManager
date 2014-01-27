# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#should wrap these in a self evoking anon function wrapper so that they are more contained
$ ->
  $('.date').datepicker()
  $('.date').datepicker("option", "dateFormat", "dd/mm/yy")


  for date in $('.date')
    $(date).datepicker("setDate", $(date).attr('data-value'))



  return if not document.getElementById("indiv-map")

  mapOptions = {
    center: new google.maps.LatLng(lat, lon),
    zoom: 12,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  }


  map = new google.maps.Map(document.getElementById("indiv-map"), mapOptions)

  marker = new google.maps.Marker({
    position: new google.maps.LatLng(lat, lon),
    map: map
  })
