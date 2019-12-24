<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="GB2312"%> 
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>�����б�ҳ��</title>
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
	<div class="find">
		<div>
		<form method="post" name="form" action="${pageContext.request.contextPath}/announ_findLike.action">
		<table class="table1" cellpadding="0" cellspacing="0" align="center">
			<tr>
				<td align="center">
					<input type="text" name="announTitle" class="in"/>
					<input type="submit" class="button1" value="�� ��"/>
					<input type="button" name="Refresh" value="ˢ���б�" class="button1" onclick="window.location.href='${pageContext.request.contextPath}/announ_getAll.action'"/></td>
			</tr>
		</table>
		</form>
		</div>	
	</div>
	<table cellpadding="4" cellspacing="2" class="table2">
		<tr>
			<td height="25" colspan="8" class="tb_showall" align="center">&nbsp;������Ϣ�б�
				<span style="color:red"><s:actionerror/></span>
				<input type="submit" name="Delete" value="ɾ ��" id="delAll" class="button3" />
				<input type="button" name="SelectAll" onclick="selectAll()" value="ȫ ѡ"  id="select" class="button3"/>
				<input type="submit" name="Submit" value="+ �� ��" class="button2" onclick="window.location.href='${pageContext.request.contextPath}/announ/announ_add.jsp'"/></td>
		</tr>
		<tr class="td_header">
			<td></td>
			<td>������</td>
	        <td>�������</td>
	        <td>��������</td>
	        <td>����ʱ��</td>
	        <td>������ID</td>
	        <td></td>
		</tr>
		<tbody class="tbody">
		<s:iterator value="announ" var="announ">
        <tr class="td_2">
        	<td><input type="checkbox" name="check" id="check"></td>
            <td><s:property value="#announ.announId"/></td>
            <td><s:property value="#announ.announTitle"/></td>
            <td><s:property value="#announ.announContent"/></td>
            <td><s:property value="#announ.announTime"/></td>
            <td><s:property value="#announ.employeeID"/></td>
            <td><input type="button" class="button6" value="��  ��" onclick="window.location.href='${pageContext.request.contextPath}/announ_Check.action?announId=<s:property value='#announ.announId'/>'">&nbsp;&nbsp;
				<input type="button" class="button5" name="del" value="ɾ  ��" onclick="window.location.href='${pageContext.request.contextPath}/announ_Delete.action?announId=<s:property value='#announ.announId'/>'">
			</td>
        </tr>
    </s:iterator>
		</tbody>
		</table>
		<div class="bottom"></div>
  </body>
<%--   
		<script>
			/* ʵ��ȫѡ��js���� */
				function selectAll(){	
					var select = document.getElementById('select');
					var check = document.getElementsByName("check");
					//��δ��ѡ��ѡ������ֵ��Ϊtrue��ʵ��ȫ��ѡ
					if(select.value == "ȫ ѡ"){
						for(var i = 0; i < check.length; i++) { 
							if(check[i].checked == false){
								check[i].checked = true;
							}
						}
						select.value = "ȡ��ȫѡ";
					}
					//����ѡ��ѡ������ֵ��Ϊfalse��ʵ��ȡ��ȫ��ѡ
					else if(select.value == "ȡ��ȫѡ"){
						for(var i = 0; i < check.length; i++) {
							if(check[i].checked == true){
								check[i].checked = false;
							}
						}
						select.value = "ȫ ѡ";
					}
			  }
			
			/* ʵ��ȫɾ��js���� */
			window.onload = function(){
				var delAll = document.getElementById('delAll');
				var check = document.getElementsByName("check");
				//���ڴ��Ҫɾ����ID
				var theID = new Array();
				delAll.onclick = function (){
					//���ȫɾ��ť��ȡ���и�ѡ��
					if(confirm('ȷ��ȫɾ����')) {
						for(var i = 0; i < check.length; i++) {
							//��ǰ��ѡ�򱻹�ѡʱ��������ǰ�е�ɾ����ť����¼�
							if(check[i].checked == true){
								var ID = document.getElementById('the_'+i).innerText;
								theID.push(ID);
							}
						}
						//�����鴫�䵽��̨ȫɾseverlet
						window.location.href = '${pageContext.request.contextPath}/DataDeleteAllAction?arr='+theID;
			    		return true;
					} 
					return false;
				}
			}

			/* �жϲ�ѯ���Ƿ�Ϊ�� */
			function find(){
				//�жϲ�ѯ����������Ƿ�Ϊ��
				if(form.thefind.value == ""){
					alert("��ѯ���ݲ���Ϊ��!");
					form.thefind.focus();
					return false; 
				}
				return ;
			}
			
			//����ȷ��ɾ����������ʾ��
			function show(themas){ 
	  			var mas = themas;
				if(confirm('ȷ��Ҫɾ����')) { 
					window.location.href = mas;
				    return true;
				} 
				return false; 
			 }
		</script> --%>
</html>
