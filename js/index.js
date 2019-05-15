function preloader(){
    if (document.images){
        var img1 = new Image();
        img1.src = "img/bg/bg_index.jpg";
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

function login(){
	var url = "user/login.html";
	var para = {
			"username" : $("#username").val()
		};
	if(loginErrorTimes>=3) {
		layer.msg("账号错误次数太多\n请联系管理员");
		return false;
	}
	if($("#username").val()==""){
		layer.msg("请输入账号!");
		return false;
	}else{
		window.location.href="page/welcome.html";
		//var ajaxTimeoutTest = 
//		$.ajax({
//			url : url,
//			//timeout : 1000, //超时时间设置，单位毫秒
//			type : "POST",
//			data : para,
//			success : function(data) {
//				console.log(data);
//				var json = eval('('+data+')');
//				if(json.code==-1){
//					layer.msg(json.data);
//					loginErrorTimes = $("div[id^='layui-layer']").attr('times');
////					loginErrorTimes++;
//				}
//				if(json.code==0){
//					
//				}
//			}
////			,complete : function(XMLHttpRequest,status){//请求完成后最终执行参数
////				if(status=='timeout'){//超时,status还有success,error等值的情况
////					ajaxTimeoutTest.abort();
////					//提示层
////					layer.msg('链接超时');
////					return false;
////				}
////			}
//		});
	}
}

function regist(){
	$("#registUserName").val("");
	$("#registNickName").val("");
	showDiv();
}

function register(){
	var url = ctx+"/user/regist.html";
	var para = {
			"userName" : $("#registUserName").val(),
			"nickName" : $("#registNickName").val()
		};
	if($("#registUserName").val()==""){
		layer.msg("请输入用户名!");
		return false;
	}else if($("#registNickName").val()==""){
		layer.msg("请输入昵称!");
		return false;
	}else{
		$.ajax({
			url : url,
			type : "POST",
			data : para,
			success : function(data) {
				console.log(data);
				var json = eval('('+data+')');
				if(json.code==-1){
					layer.msg(json.data);
					return;
				}
				if(json.code==0){
					layer.msg(json.data);
					hideDiv();
				}
			}
		});	
	}
}

function showDiv() {
	document.getElementById("bg").style.display = "block";
	document.getElementById("show").style.display = "block";
}
function hideDiv() {
	document.getElementById("bg").style.display = 'none';
	document.getElementById("show").style.display = 'none';
}