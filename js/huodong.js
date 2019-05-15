window.onload=function(){
	if (location.href.indexOf("?xyz=")<0){
		location.href=location.href+"?xyz="+Math.random();
	}
}

function preloader(){
    if (document.images){
        var img1 = new Image();
        img1.src = ctx+"/img/bg/bg_huodong.jpg";
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

function addRmb(num){
	if($("#begin"+num).val()=="true"){
		$.ajax({
			url:ctx+"/huodong/getRmbByHuodong1.html",
			type:"POST",
			data: {num:num},
			success:function(data){
				var json = eval('('+data+')');
				if(json.code==-2){
					layer.msg(json.data);
					return;
				}else if(json.code==0){
					$("#divRight"+num).addClass("rightcircleAn");
					$("#divLeft"+num).addClass("leftcircleAn");
					var set = setTimeout(function(){
						$("#divRight"+num).removeClass("rightcircleAn");
						$("#divLeft"+num).removeClass("leftcircleAn");
						$("#divRight"+num).css("border","20px solid blue");
						$("#divLeft"+num).css("border","20px solid blue");
						$("#text"+num).css("color","blue");
						$("#text"+num).html("已领取");
						$("#begin"+num).val("false");
						var porm = json.data.substr(0,1);
						var money = json.data.substr(1,json.data.length);
						if(porm=="-"){
							money *= -1;
						}
						$("#userRmb").html(parseInt($("#userRmb").html())+parseInt(money));
					},5000);
				}
			}
		});
	}
}

function flip(num){
	var ranNum = parseInt(Math.random()*3)+0;
	$.ajax({
		url:ctx+"/huodong/getRmbByHuodong2.html",
		type:"POST",
		data: {num:num,characterPic:ranPoker[ranNum]},
		success:function(data){
			var json = eval('('+data+')');
			if(json.code==0){
				$("#count").val(json.data);
				$("#pokerImg"+num).attr("src",ranPoker[ranNum]);
				if(json.data>0){
					$("#userRmb").html(parseInt($("#userRmb").html())-50*json.data);
				}
			}else{
				layer.msg(json.data);
				return;
			}
		}
	});
}

/*$("#addRmb"+num).css("-webkit-animation","scaleout 1.0s infinite ease-in-out");
$("#addRmb"+num).css("animation","scaleout 1.0s infinite ease-in-out");
$("#addRmb"+num).css("animation-iteration-count","1");
$("#addRmb"+num).css("-webkit-animation-iteration-count","1");*/