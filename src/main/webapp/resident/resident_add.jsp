<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="GB2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>�������ҳ��</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/MYCSS/table.css">
<script src="./js/jquery-3.2.1.min.js"></script>
</head>
<body class="back">
	<div class='headFont'>����������Ϣ</div>
	<div class="border">
	<form action="${pageContext.request.contextPath}/resident_addNew" name="form" method="post">
	<table class="table" >
		<span style="color:red"><s:actionerror/></span>
		<!-- <tr>
			<td class='leftFont1'>��&nbsp;��&nbsp;��&nbsp;��:</td><td>
			<input type='text' name='residentID' class="in"></td>
		</tr> -->
		<tr>
			<td class='leftFont1'>��&nbsp;��&nbsp;��&nbsp;��:</td><td>
			<input type='text' name='residentName' class="in"></td>
		</tr>
		<tr>
			<td class='leftFont1'>��&nbsp;��&nbsp;��&nbsp;��:</td><td>
			<input type='text' name='residentSex' class="in"></td>
		</tr>
		<tr>
			<td class='leftFont1'>��&nbsp;��&nbsp;��&nbsp;��&nbsp;֤&nbsp;��:</td><td>
			<input type='text' name='IdNumber' class="in"></td>
		</tr>
		<tr>
			<td class='leftFont1'>��&nbsp;��&nbsp;��&nbsp;��&nbsp;��:</td><td>
			<input type='text' name='PhoneNumber' class="in"></td>
		</tr>
		<!-- <tr>
			<td class='leftFont1'>��&nbsp;ס&nbsp;��&nbsp;��:</td><td>
			<input type='text' name='CheckinTime' class="in"></td>
		</tr> -->
		
		<tr>
			<td align="center" colspan="2">
			<input type="submit" name='submit' value='�ύ' class='button'/>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="button" name='return' value='�����б�' class='button' onclick="window.location.href='${pageContext.request.contextPath}/resident_getAll.action'"></td>		
		</tr>
	</table>
	</form>
	</div>
</body>
</html>