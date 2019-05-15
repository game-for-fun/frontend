function preloader(){
    if (document.images){
        var img1 = new Image();
        img1.src = "../img/bg/bg_welcome.jpg";
    }
}

function addLoadEvent(func) {
    var oldonload = window.onload;
    if(typeof window.onload != 'function'){
        window.onload = func;
    }else{
        window.onload = function(){
            if(oldonload){
                oldonload();
            }
            func();
        }
    }
}
addLoadEvent(preloader);

function go(str){
	switch (str) {
	case "zhaohuan":
		str = "../lottery/lottery.html";
		break;
	case "jinji":
		str = "/lottery/myCard.html";
		break;
	case "huodong":
		str = "/huodong/huodongPage.html";
		break;
	case "rank":
		str = "/user/rankPage.html?orderParam='rmb'";
		break;
	}
	window.location.href = str;
}