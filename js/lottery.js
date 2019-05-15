function preloader() {
	if(document.images) {
		var img1 = new Image();
		img1.src = "../img/bg/bg_lottery.jpg";
	}
}

function addLoadEvent(func) {
	var oldonload = window.onload;
	if(typeof window.onload != 'function') {
		window.onload = func;
	} else {
		window.onload = function() {
			if(oldonload) {
				oldonload();
			}
			func();
		}
	}
}
addLoadEvent(preloader);

function lottery(num) {
	console.log("lottery");
	if(num == 10) {
		num = 2000;
	} else {
		num = 220;
	}
	window.location.href = "../lottery/circle.html?num=" + num;
}