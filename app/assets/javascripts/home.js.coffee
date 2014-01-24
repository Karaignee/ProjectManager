# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


$ ->
  return if not document.getElementById("mf-map")

  mapOptions = {
    center: new google.maps.LatLng(53.346862, -6.264267),
    zoom: 12,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  }


  map = new google.maps.Map(document.getElementById("mf-map"), mapOptions)

  for project in projectData
    marker = new google.maps.Marker({
      position: new google.maps.LatLng(project.latitude, project.longitude),
      map: map,
      title: project.title
    })

    infowindow = new google.maps.InfoWindow({
      content: """
               <a href="projects/#{project.id}"><h5>#{project.title}</h5></a>
               <div>#{project.description ? 'No Description'}</div>
               """
    })

 #   ((infowindow, marker) ->
  #    google.maps.project.addListener(marker, 'click', () ->
   #     infowindow.open(map, marker)
    #  )
   # )(infowindow, marker)