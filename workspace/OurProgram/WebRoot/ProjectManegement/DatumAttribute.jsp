<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <base href="<%=basePath%>">
    <link rel="stylesheet" href="../css/style.css">
    <style type="text/css">
    </style>
    <title>My JSP 'unit.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script>
function returnPrj(src) {
	if(!src.id)
		return;
	window.returnValue=src.id.substring(3);
	window.close();
}

function ok() {
	var a = new Array();
	var t = 0;
	var c = document.form1.elements;
	for (var i = 0; i < c.length; i++) {
		if (c[i].type=="radio" && c[i].checked) {
			a[t] = c[i].value;
			t++;
		}
	}
	window.returnValue=a;
	window.close();
}

</script>
  </head>
  
   
   
   <body bgcolor="#FFFFFF" text="#000000" leftmargin="10" topmargin="10">
   <s:form name="form1">
   
       <s:iterator value="list" status="s" id="l">
		 <input type="radio" name="datumAttribute"  value="<s:property value="datumAttribute" />"/> <s:property value="datumAttribute" />  <br/>

	</s:iterator>
	
	
	<p align="center">
	
	<img src="/OurProgram/images/confirm.gif"  onClick="ok();" />
	
</p>
	
	</s:form>
  </body>
</html>