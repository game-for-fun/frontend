function preloader(){
    if (document.images){
        var img1 = new Image();
        img1.src = ctx+"/img/bg/bg_jinji.jpg";
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

function addStar(num,cardId){
	$.ajax({
		url:ctx+"/lottery/addStar.html",
		type:"POST",
		data: {cardId:cardId},
		success:function(data){
			var json = eval('('+data+')');
			if(json.code==0){
				$("#pieces"+num).html(json.data.characterPieces);
				switch (json.data.characterStars) {
				case 2:
					$("#charPic"+num).css("border","5px solid green");
					$("#stars"+num).html("★★");
					break;
				case 3:
					$("#charPic"+num).css("border","5px solid blue");
					$("#stars"+num).html("★★★");
					break;
				case 4:
					$("#charPic"+num).css("border","5px solid purple");
					$("#stars"+num).html("★★★★");
					break;
				case 5:
					$("#charPic"+num).css("border","5px solid orange");
					$("#stars"+num).html("★★★★★");
					break;
				case 6:
					$("#charPic"+num).css("border","5px solid gold");
					$("#stars"+num).html("★★★★★★");
					break;
				case 7:
					$("#charPic"+num).css("border","5px solid red");
					$("#stars"+num).html("★★★★★★★");
					break;
				}
				$("#count").html(json.count);
			}
		}
	});
}