<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>�û�ע��</title>
<link rel="stylesheet" href="./bootstrap-3.3.7/css/bootstrap.min.css">    
<script src="./js/jquery-3.2.1.min.js"></script>    
<script src="./js/bootstrap.min.js"></script>  
<style type="text/css">
  .input-group{  
        margin:10px 0px; 
    }  
    h3{  
        padding:5px;  
        border-bottom:1px solid #ddd;  
    }  
    em{ 
        color:#c7254e;  
        font-style: inherit;  
        background-color: #f9f2f4;  
    }  
    .center{
       margin-left: auto;
       margin-right: auto;
       vertical-align:middle;
       text-align: center;
    }
    .top{
    	width: 100%;
    	height: 60px;
    	background-color: black;
    	color: silver;
    	font-size: 23px;
    	font-family: '��������';
    }
    .buttom{
    	width: 100%;
    	height: 40px;
    	background-color: black;
    	position: fixed;
    	bottom:0px;
    	color: white;
    	font-size: 18px;
    	font-family: '����';
    	text-align: center;
    	font-weight: bold;
    	line-height: 40px;
    }
</style>
</head>
<body style="background-image: url(image/ע��.jpg)">
<div class="top">
	<img src="image/logo.png" style="max-width: 60px; max-height: 60px; margin-left: 10%;">
	&nbsp;С&nbsp;��&nbsp;��&nbsp;ҵ&nbsp;��&nbsp;��&nbsp;ϵ&nbsp;ͳ
</div>

<div class="row center" style="margin-top:120px;">  
  <div class="col-md-5 col-sm-offset-4">  
    <div class="well col-md-10">  
       <h3>�û�ע��</h3>  
       <span style="color:red"><s:actionerror/></span>
       <form action="${pageContext.request.contextPath}/registerAction.action" method="post" onsubmit="return check()">
		    <div class="input-group input-group-md">  
		          <span class="input-group-addon" id="sizing-addon1"><i class="glyphicon glyphicon-user" aria-hidden="true"></i></span>  
		          <input type="text" class="form-control" id="uname" name="userName" placeholder="�û���" aria-describedby="sizing-addon1" >
		    </div> 
		    <div class="input-group input-group-md">  
		          <span class="input-group-addon" id="sizing-addon1"><i class="glyphicon glyphicon-user" aria-hidden="true"></i></span>  
		          <input type="text" class="form-control" id="associate" name="associatedId" placeholder="�������" aria-describedby="sizing-addon1">
		    </div>  
		    <div class="input-group input-group-md">  
		          <span class="input-group-addon" id="sizing-addon1"><i class="glyphicon glyphicon-lock"></i></span>  
		          <input type="password" class="form-control" id="upassword" name="userPwd" placeholder="����" aria-describedby="sizing-addon1">  
		    </div>
		    <div class="input-group input-group-md">  
		          <span class="input-group-addon" id="sizing-addon1"><i class="glyphicon glyphicon-lock"></i></span>  
		          <input type="password" class="form-control" id="repassword" name="reUserPwd" placeholder="ȷ������" aria-describedby="sizing-addon1">  
		    </div>
		    <div>
				<input type="radio" name="userType" value="0" checked="checked" style="margin-left:5px;"><span>��ͨ����</span>
				<input type="radio" name="userType" value="1"  style="margin-left:5px;"><span>��ҵ����Ա</span>
				<input type="radio" name="userType" value="2"  style="margin-left:5px;"><span>ϵͳ����Ա</span>
			</div><br/>
		    <input type="submit" name="sub" class="btn btn-success btn-block" value="ע��"/>
	    </form>
    </div>  
  </div>  
</div>  
<div class="buttom">��&nbsp;��&nbsp;��&nbsp;Ϣ&nbsp;��&nbsp;��&nbsp;��&nbsp;ѧ</div>
</body>
</html>