<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="GB2312"%> 
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>������Ϣ�鿴ҳ��</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/MYCSS/table.css">
<script src="./js/jquery-3.2.1.min.js"></script>
</head>
<body class="back">
	<div class='headFont'>�鿴������Ϣ</div>
	<div class="border">
	<form>
	<table class="table" >
		<tr>
			<td class='leftFont1'>��&nbsp;��&nbsp;��&nbsp;��:</td><td>
			<input type='text' name='announTitle' class="in" value="<s:property value='announTitle'/>"></td>
		</tr>
		<tr>
			<td class='leftFont3'>��&nbsp;��&nbsp;��&nbsp;��:</td>
			<td><textarea rows="20" cols="40" name="announContent" class="area"><s:property value='announContent'/></textarea></td>
		</tr>
		<tr>
			<td class='leftFont1'>��&nbsp;��&nbsp;��&nbsp;ID:</td><td>
			<input type='text' name='employeeID' class="in" value="<s:property value='employeeID'/>"></td>
		</tr>
		<tr>
		<tr>
			<td class='leftFont1'>��&nbsp;��&nbsp;��&nbsp;��:</td><td>
			<input type='text' name='announTime' class="in" value="<s:property value='announTime'/>"></td>
		</tr>
		<tr>
			<td align="center" colspan="2">
			<input type="button" name='return' value='�����б�' class='button' onclick="window.location.href='${pageContext.request.contextPath}/announ_getAll.action'"></td>		
		</tr>
	</table>
	</form>
	</div>
</body>
</html>