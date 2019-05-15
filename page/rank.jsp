<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/include/taglibs.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="user-scalable=no" />
<title>rank</title>
<link href="${ctx}/css/rank.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${ctx}/js/rank.js"></script>
</head>
<body>
<form id="orderForm" action="${ctx}/user/rankPage.html" method="post">
	<input type="hidden" id="orderParam" name="orderParam" value="rmb">
	<input type="hidden" id="orderParamNum" name="orderParamNum" value="0">
	<div class="orderByDiv">
		<div class="orderBy" id="orderBy0" onclick="orderBy(0,'rmb')">龙石</div>
		<div class="orderBy" id="orderBy1" onclick="orderBy(1,'score')">战力</div>
		<div class="orderBy" id="orderBy2" onclick="orderBy(2,'level')">等级</div>
		<div class="orderBy" id="orderBy3" onclick="orderBy(3,'money')">金币</div>
	</div>
	<table class="tabs">
		<c:forEach items="${rankList}" var="list" varStatus="i">
			<tr>
				<td><div id="rank">${i.count}</div></td>
				<td style="width: 120px;"><img class="userImg" src="${ctx}${list.userImg}"></td>
				<td style="text-align: left;">${list.nickName}</td>
				<c:if test="${orderParamNum==0}">
					<td>${list.rmb}</td>
				</c:if>
				<c:if test="${orderParamNum==1}">
					<td>${list.score}</td>
				</c:if>
				<c:if test="${orderParamNum==2}">
					<td>${list.level}</td>
				</c:if>
				<c:if test="${orderParamNum==3}">
					<td>${list.money}</td>
				</c:if>
			</tr>
		</c:forEach>
	</table>
</form>
<div class="bottom">
	<img onclick="window.location.href='${ctx}/user/welcome.html'" class="fanhui" src="${ctx}/img/icon/fanhui.png">
</div>
<script>
	var orderParamNum = "${orderParamNum}";
	console.log(orderParamNum);
	$("#orderBy"+orderParamNum).css("background","#00DDDD");
	$("#orderBy"+orderParamNum).css("border","5px solid #00BBFF");
</script>
</body>
</html>