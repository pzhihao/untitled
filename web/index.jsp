<%--
  Created by IntelliJ IDEA.
  User: pengzhihao
  Date: 2017/5/15
  Time: 下午2:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>11
  <s:form action="klogin" method="POST" enctype="multipart/form-data">
    <s:textfield name="username"></s:textfield>
    <s:textfield name="password"></s:textfield>
    <s:file name="upload"></s:file>
    <s:submit></s:submit>
  </s:form>
  </body>
</html>
