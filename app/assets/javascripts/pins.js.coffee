# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
# Coffeescript version, shorthand for javascript. Sensitive to indenting.
# js2coffee.org converts to coffeescrupt. 
# cannot write javascript here after CoffeeScript, can put it under application.js

jQuery ->
	$('#pins').imagesLoaded ->
		$('#pins').masonry itemSelector: ".box"