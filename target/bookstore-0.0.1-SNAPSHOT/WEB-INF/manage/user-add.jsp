<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台管理 - BOOK HOUSE</title>
<link type="text/css" rel="stylesheet" href="../css/style.css" />
<script type="text/javascript" src="../scripts/function-manage.js"></script>
</head>
<body onload="getNowFormatDate()">
<div id="header" class="wrap">
	<div id="logo"><img src="../images/logo.gif" /></div>
	<div class="help"><a href="index.do">返回前台页面</a></div>
	<div class="navbar">
		<ul class="clearfix">
			<li ><a href="mana.do">首页</a></li>
			<li class="current"><a href="manaUser.do">用户</a></li>
			<li><a href="manaBook.do">商品</a></li>
			<li ><a href="allBookOrder.do">订单</a></li>

		</ul>
	</div>
</div>
<div id="childNav">
	<div class="welcome wrap">
		管理员您好，今天是<a id="time"></a>，欢迎回到管理后台。
	</div>
</div>
<div id="main" class="wrap">
	<div id="menu-mng" class="lefter">
		<div class="box">
			<dl>
				<dt>用户管理</dt>
				<dd><em><a href="addUserPage.do">新增</a></em><a href="manaUser.do">用户管理</a></dd>
				<dt>商品管理</dt>
				<dd><em><a href="addproductPage.do">新增</a></em><a href="manaBook.do">商品管理</a></dd>
				<dt>订单管理</dt>
				<dd><a href="allBookOrder.do">订单管理</a></dd>
				</dd>
			</dl>
		</div>
	</div>
	<div class="main">
		<h2>新增用户</h2>
		<div class="manage">
			<form action="addUser.do" method="post">
				<table class="form">
					<tr>
						<td class="field">用户名：</td>
						<td><input type="text" class="text" name="userName" value="" /></td>
					</tr>
					<tr>
						<td class="field">密码：</td>
						<td><input type="text" class="text" name="passWord" value="" /></td>
					</tr>
					<tr>
						<td class="field">性别：</td>
						<td><input type="radio" name="gender" value="男" checked="checked" />男 <input type="radio" name="gender" value="女" />女</td>
					</tr>
					<tr>
						<td class="field">邮箱：</td>
						<td><input type="text" class="text" name="email" value="" /></td>
					</tr>
					<tr>
						<td class="field">手机号码：</td>
						<td><input type="text" class="text" name="phone" value="" /></td>
					</tr>
					<tr>
						<td class="field">送货地址：</td>
						<td><input type="text" class="text" name="address" value="" /></td>
					</tr>
					
					<tr>
						<td></td>
						<td><label class="ui-blue"><input type="submit" name="submit" value="添加" /></label></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<div class="clear"></div>
</div>
<div id="footer">
	Copyright &copy; 2010 All Rights Reserved.
</div>
</body>
</html>
