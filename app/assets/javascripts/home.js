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
});