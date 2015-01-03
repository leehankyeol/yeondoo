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
});

// From Purecss.io
(function (window, document) {

    

}(this, this.document));