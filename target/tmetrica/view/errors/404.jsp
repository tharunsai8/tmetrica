<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <%@include file="../include/head.jsp" %>
    <link href="${pageContext.request.contextPath}/view/css/error.css" rel="stylesheet">
    <title>Tmetrica - 404 ERROR</title>
</head>

<body>
<%@include file="../include/navbar.jsp" %>
<div id="notfound">
    <div class="notfound">


        <div class="notfound-404">
            <h1>: (</h1>
        </div>
        <h2>404 - Page not found</h2>
        <p>The page you are looking for might have been removed had its name changed or is temporarily
            unavailable.</p>
        <a href="${pageContext.request.contextPath}/">home page</a>
    </div>
</div>
<%@include file="../include/footer.jsp" %>
</body>
</html>
