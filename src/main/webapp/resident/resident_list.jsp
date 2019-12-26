<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="GB2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>�������ҳ��</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/MYCSS/list.css">
<script src="./js/jquery-3.2.1.min.js"></script> 
<script type="text/javascript">
window.onload = function(){
	var msg = "${requestScope.error}";
	if(msg != null && !msg.equals("")){
		alert(msg);
	}
}
</script>
</head>
<body class="back">
	<div class="border">
	<div class="find">
		<div>
		<form method="post" name="form" action="${pageContext.request.contextPath}/resident_findLike.action">
		<table class="table1" cellpadding="0" cellspacing="0" align="center">
			<tr>
				<td align="center">
					<input type="text" name="residentName" class="in"/>
					<input type="submit" class="button1" value="�� ��"/>
					<input type="button" name="Refresh" value="ˢ���б�" class="button1" onclick="window.location.href='${pageContext.request.contextPath}/resident_getAll.action'"/></td>
			</tr>
		</table>
		</form>
		</div>	
	</div>
	<table cellpadding="4" cellspacing="2" class="table2">
		<tr>
			<td height="25" colspan="8" class="tb_showall" align="center">&nbsp;������Ϣ�б�
				<span style="color:red"><s:actionerror/></span>
				<input type="submit" name="Delete" value="ɾ ��" id="delAll" class="button3" oncick="window.location.href='${pageContext.request.contextPath}/resident_DelAll.action"/>
				<input type="button" name="SelectAll" onclick="selectAll()" value="ȫ ѡ"  id="select" class="button3"/>
				<input type="submit" name="Submit" value="+ �� ��" class="button2" onclick="window.location.href='${pageContext.request.contextPath}/resident/resident_add.jsp'"/></td>
		</tr>
		<tr class="td_header">
			<td></td>
			<td>������</td>
	        <td>��������</td>
	        <td>�����Ա�</td>
	        <td>�������֤��</td>
	        <td>�����ֻ���</td>
	        <td>��ס����</td>   
	        <td></td>
		</tr>
		<tbody class="tbody">
		<s:iterator value="resident" var="resident">
        <tr class="td_2">
        	<td><input type="checkbox" name="check" id="check"></td>
            <td><s:property value="#resident.residentId"/></td>
            <td><s:property value="#resident.residentName"/></td>
            <td><s:property value="#resident.residentSex"/></td>
            <td><s:property value="#resident.IdNumber"/></td>
            <td><s:property value="#resident.PhoneNumber"/></td>
            <td><s:property value="#resident.CheckinTime"/></td>
            <td><input type="button" class="button6" value="��  ��" onclick="window.location.href='${pageContext.request.contextPath}/resident_Check.action?residentId=<s:property value='#resident.residentId'/>'">&nbsp;&nbsp;
				<input type="button" class="button5" name="del" value="ɾ  ��" onclick="window.location.href='${pageContext.request.contextPath}/resident_Delete.action?residentId=<s:property value='#resident.residentId'/>'">
			</td>
        </tr>
    </s:iterator>
		</tbody>
		</table>
		<div class="bottom"></div>
		</div>
  </body>

</html>
