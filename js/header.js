function getUserImg(){
	var clsbtnImg = ctx+"/img/icon/close.png";
	$.ajax({
		url : ctx+"/user/getUserImg.html",
		type : "POST",
		success : function(data) {
			var json = eval('('+data+')');
			showDiv();
			var msgDiv = '';
			msgDiv = "<div id='clsbtn' type='button' onclick='hideDiv()'><img src='"+clsbtnImg+"'></div>"
			for(var i=0;i<json.data.length;i++){
				msgDiv += "<img class='userImgList' src='"+ctx+json.data[i].characterPic+"' onclick='changeUserImg("+"\""+json.data[i].characterPic+"\")' >"
			}
			$("#show").html(msgDiv);
		}
	});
}

function changeUserImg(pic){
	var para = {
			"pic" : pic
		};
	$.ajax({
		url : ctx+"/user/changeUserImg.html",
		type : "POST",
		data : para,
		success : function(data) {
			var json = eval('('+data+')');
			if(json.code==0){
				hideDiv();
				$("#userImg").attr("src",ctx+"/"+pic);
			}
		}
	});
}

function showDiv() {
	document.getElementById("bg").style.display = "block";
	document.getElementById("show").style.display = "block";
}
function hideDiv() {
	document.getElementById("bg").style.display = 'none';
	document.getElementById("show").style.display = 'none';
}