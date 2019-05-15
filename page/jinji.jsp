<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/include/taglibs.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="user-scalable=no" />
<title>jinji</title>
<link href="${ctx}/css/jinji.css" rel="stylesheet" type="text/css">
<link href="${ctx}/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="${ctx}/css/star-rating.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${ctx}/js/jinji.js"></script>
<script type="text/javascript" src="${ctx}/js/star-rating.js"></script>
</head>
<body>
<%@ include file="/common/include/header.jsp"%>
<table class="tabs">
	<tr>
		<td>&nbsp;&nbsp;</td>
		<td style="text-align: right;">角色名</td>
		<td style="text-align: right;">等级</td>
		<td style="text-align: right;">碎片数</td>
		<td style="text-align: right;padding-right: 20px;">战力</td>
	</tr>
	<c:forEach items="${cardList}" var="list" varStatus="i">
	<tr>
		<td style="text-align: left;padding-left: 20px;width: 120px;">
			<c:if test="${list.characterStars==1}">
				<img id="charPic${i.count-1}" class="charPic" src="${ctx}${list.characterPic}" style="border: 5px solid white">
				<div id="stars${i.count-1}" class="starDiv">★</div>
			</c:if>
			<c:if test="${list.characterStars==2}">
				<img id="charPic${i.count-1}" class="charPic" src="${ctx}${list.characterPic}" style="border: 5px solid green">
				<div id="stars${i.count-1}" class="starDiv">★★</div>
			</c:if>
			<c:if test="${list.characterStars==3}">
				<img id="charPic${i.count-1}" class="charPic" src="${ctx}${list.characterPic}" style="border: 5px solid blue">
				<div id="stars${i.count-1}" class="starDiv">★★★</div>				
			</c:if>
			<c:if test="${list.characterStars==4}">
				<img id="charPic${i.count-1}" class="charPic" src="${ctx}${list.characterPic}" style="border: 5px solid purple">
				<div id="stars${i.count-1}" class="starDiv">★★★★</div>
			</c:if>
			<c:if test="${list.characterStars==5}">
				<img id="charPic${i.count-1}" class="charPic" src="${ctx}${list.characterPic}" style="border: 5px solid orange">
				<div id="stars${i.count-1}" class="starDiv">★★★★★</div>
			</c:if>
			<c:if test="${list.characterStars==6}">
				<img id="charPic${i.count-1}" class="charPic" src="${ctx}${list.characterPic}" style="border: 5px solid gold">
				<div id="stars${i.count-1}" class="starDiv">★★★★★★</div>
			</c:if>
			<c:if test="${list.characterStars==7}">
				<img id="charPic${i.count-1}" class="charPic" src="${ctx}${list.characterPic}" style="border: 5px solid red">
				<div id="stars${i.count-1}" class="starDiv">★★★★★★★</div>
			</c:if>
		</td>
		<td style="text-align: right;">${list.characterName}</td>
		<td style="text-align: right;">${list.characterLv}</td>
			<td style="text-align: right;" id="pieces${i.count-1}">${list.characterPieces}
				<c:if test="${(list.characterStars==1&&list.characterPieces>=40)||
							  (list.characterStars==2&&list.characterPieces>=60)||
							  (list.characterStars==3&&list.characterPieces>=100)||
							  (list.characterStars==4&&list.characterPieces>=150)||
							  (list.characterStars==5&&list.characterPieces>=180)||
							  (list.characterStars==6&&list.characterPieces>=230)
				}">
					<img id="upImg" onclick="addStar(${i.count-1},${list.id})" src="${ctx}/img/icon/up.jpg">
				</c:if>
			</td>
		<td style="text-align: right;padding-right: 20px;">${list.score}</td>
	</tr>
	</c:forEach>
	<tr>
		<td colspan="5" style="text-align: right;padding-right: 20px;border-bottom: none;">
			已收集${fn:length(cardList)}/${fn:length(characterList)}<br/>
			${user.vip+2}星卡牌数量<span id="count"> ${count}</span>/10
		</td>
	</tr>
</table>
<%@ include file="/common/include/bottom.jsp"%>
<script>
</script>
</html>