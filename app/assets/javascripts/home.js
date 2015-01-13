$(document).ready(function() {
	$("#logo-image").click(function(){
		var $this= $(this);

		switch (Math.floor(Math.random() * 4)) {
			case 0:
			$this.transition({ opacity: 0 }).transition({ opacity: 1 }, function() {
				$this.removeAttr("style");
			});
			break;

			case 1:
			$this.transition({ rotate: "360" }).transition({ rotate: "0" }, function() {
				$this.removeAttr("style");
			});
			break;

			case 2:
			$this.transition({ scale: 1.2 }).transition({ scale: 1 }, function() {
				$this.removeAttr("style");
			});
			break;

			case 3:
			$this.transition({ rotateX: "180" }).transition({ rotateX: "0" }, function() {
				$this.removeAttr("style");
			});
			break;
		}
	});

	// Layout from PureCss
	var layout   = document.getElementById('layout'),
		menu     = document.getElementById('menu'),
		menuLink = document.getElementById('menuLink');

	function toggleClass(element, className) {
		var classes = element.className.split(/\s+/),
			length = classes.length,
			i = 0;

		for(; i < length; i++) {
		  if (classes[i] === className) {
			classes.splice(i, 1);
			break;
		  }
		}
		// The className is not found
		if (length === classes.length) {
			classes.push(className);
		}

		element.className = classes.join(' ');
	}

	menuLink.onclick = function (e) {
		var active = 'active';

		e.preventDefault();
		toggleClass(layout, active);
		toggleClass(menu, active);
		toggleClass(menuLink, active);
	};

	
	// Google Map API
	if ($('#map-canvas').length > 0) {
		var marker;
		var map;
		var defaultZoom = 15;

		var yeondooLatlng = new google.maps.LatLng(37.5793285, 126.9824502);

		var mapOptions = {
			zoom: defaultZoom,
			center: yeondooLatlng,
			scrollwheel: false,
			draggable: false
		};

		map = new google.maps.Map(document.getElementById('map-canvas'),
			mapOptions);

		marker = new google.maps.Marker({
				position: yeondooLatlng,
				map: map,
				title: 'Yeondoo',
				animation: google.maps.Animation.DROP,
		});

		google.maps.event.addListener(marker, 'click', toggleBounce);

		google.maps.event.addListener(map, 'zoom_changed', function() {
			zoomLevel = map.getZoom();
			if (zoomLevel > defaultZoom) {
				map.set('draggable', true);
			} else {
				map.set('draggable', false);
			}
		});

		function toggleBounce() {
			if (marker.getAnimation() != null) {
				marker.setAnimation(null);
			} else {
				marker.setAnimation(google.maps.Animation.BOUNCE);
			}
		}
	}

	// Magnific-popup
	$('.image-popup').magnificPopup({
		type: 'image'
	});
});