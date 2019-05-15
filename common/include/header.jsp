<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/include/taglibs.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="user-scalable=no" />
<title>header</title>
<link href="${ctx}/css/header.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${ctx}/js/header.js"></script>
</head>
<body onclick="hideDiv()">
<div class="header">
	<p class="overimg">
		<a><img class="userImg" id="userImg" onclick="getUserImg()" src="${ctx}${user.userImg}"></a>
		<i class="light"></i>
	</p>
	<div id="vip">VIP${user.vip}</div>
	<div class="userMsg">
		<div class="userMoney">金币: <span id="userMoney">${user.money}</span></div>
		<div class="userRmb">龙石: <span id="userRmb">${user.rmb}</span></div><br/>
		<div class="userName"><span id="userName">${user.nickName}</span> Lv: <span id="userLevel">${user.level}</span></div>
		<div class="userScore">战力: <span id="userScore">${user.score}</span></div>
	</div>
</div>
<div id="bg"></div>
<div id="show">
	<input id="btnclose" style="float: right" type="button" value="Close" onclick="hideDiv();" />
</div>

<script>
	var userMoney = "${user.money}";
	var userRmb = "${user.rmb}";
	var userName = "${user.nickName}";
	var userScore = "${user.score}";
</script>
</html>