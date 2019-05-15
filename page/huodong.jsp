<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/include/taglibs.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="user-scalable=no" />
<title>huodong</title>
<link href="${ctx}/css/huodong.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${ctx}/js/huodong.js"></script>
</head>
<body>
<%@ include file="/common/include/header.jsp"%>
<table class="tabs">
	<tr>
		<td colspan="4" class="title">1.领取龙石</td>
	</tr>
	<tr>
		<c:forEach begin="0" end="3" varStatus="i">
			<td>
				<div class="circleProgress_wrapper" id="circleDiv${i.count-1}" onclick="addRmb(${i.count-1})">
					<div class="wrapper right">
						<div class="circleProgress rightcircle" id="divRight${i.count-1}"></div>
					</div>
					<div class="text" id="text${i.count-1}"></div>
					<div class="wrapper left">
						<div class="circleProgress leftcircle" id="divLeft${i.count-1}"></div>
					</div>
				</div>
			</td>
		</c:forEach>
	</tr>
	<tr>
		<td class="descTd">07:00</td>
		<td class="descTd">12:00</td>
		<td class="descTd">18:00</td>
		<td class="descTd">21:00</td>
	</tr>
	<tr>
		<td colspan="4" class="title">2.翻牌</td>
	</tr>
	<tr>
		<c:forEach items="${picList}" var="pic" varStatus="i" >
			<td class="pokerTd">
				<div class="poker">
					<c:if test="${pic!=null}">
						<img id="pokerImg${i.count-1}" src="${ctx}${pic}"/>
					</c:if>
					<c:if test="${pic==null}">
						<img id="pokerImg${i.count-1}" onclick="flip(${i.count-1})" src="${ctx}/img/poker/back.jpg"/>
					</c:if>
				</div>
			</td>
		</c:forEach>
	</tr>
	<tr>
		<td colspan="4" class="descTd">注:首次免费,之后消耗50倍数的龙石</td>
	</tr>
	
	<input type="hidden" id="begin0"/>
	<input type="hidden" id="begin1"/>
	<input type="hidden" id="begin2"/>
	<input type="hidden" id="begin3"/>
	
</table>
<script>
	var userStatus = "${huodongList1[0].userStatus}";
	var status1 = "${huodongList1[0].status}";
	var staArr = userStatus.split(",");
	
	for(var i=0;i<staArr.length;i++) {
		if(staArr[i]==0){
			if(status1-1<i){
				$("#text"+i).css("color","gray");
				$("#text"+i).html("未领取");
				$("#divRight"+i).css("border","20px solid gray");
				$("#divLeft"+i).css("border","20px solid gray");
				$("#begin"+i).val("true");
			}else{
				$("#text"+i).css("color","rgb(232, 232, 12)");
				$("#text"+i).html("可领取");
				$("#begin"+i).val("true");
			}
		}else{
			$("#text"+i).css("color","blue");
			$("#text"+i).html("已领取");
			$("#divRight"+i).css("border","20px solid blue");
			$("#divLeft"+i).css("border","20px solid blue");
			$("#begin"+i).val("false");
		}
	}

	var ranPoker = ["${ctx}/img/role/sunwukong.jpg","${ctx}/img/role/beijita.jpg",
                "${ctx}/img/role/buerma.jpg","${ctx}/img/role/sunwufan.jpg"];
</script>
</body>
<%@ include file="/common/include/bottom.jsp"%>
</html>