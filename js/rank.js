function orderBy(num,str){
	$("#orderParam").val(str);
	$("#orderParamNum").val(num);
	$("#orderForm").submit();
	for(var i=0;i<4;i++){
		if(i==num){
			$("#orderBy"+i).css("background","#00DDDD");
			$("#orderBy"+i).css("border","5px solid #00BBFF");
		}else{
			$("#orderBy"+i).css("background","#00BBFF");
			$("#orderBy"+i).css("border","5px solid white");
		}
	}
}