<%--
  Created by IntelliJ IDEA.
  User: pengzhihao
  Date: 2017/5/15
  Time: 下午5:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    登录成功
    <s:property value="#user"></s:property>
    ${user}

    <hr>
    struts标签:<s:property value="#session.pwd"></s:property>
    ognl:${session.pwd}
    <hr>
    ${msg}
    <img src="upload/${filename}">

</body>
</html>
