<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <style>
       #map {
        height: 400px;
        width: 100%;
       }
    </style>
  </head>
  <body>
    <h1>My Google Maps Demo</h1>
    <div id="map"></div>
    <script>
      function initMap() {
    	   var uluru =  {lat: 45.466769, lng: 9.169337}; 
    	   
    	                                      
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 4,
          center: uluru
          
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB50X7t7cUB1aaTdnGX8Eo2dLcEB-49Kws&callback=initMap">
    </script>
  </body>
</html>