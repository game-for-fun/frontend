<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/include/taglibs.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="user-scalable=no" />
<title>header</title>
<style>
	* {
		margin: 0;
		padding: 0;
	}
	.fanhui {
		position: fixed;
		width:120px;
		height: 100px;
		left: 20px;
		bottom: 50px;
	}
</style>
</head>
<body>
<div class="bottom">
	<img onclick="history.go(-1)" class="fanhui" src="${ctx}/img/icon/fanhui.png">
</div>
</html>