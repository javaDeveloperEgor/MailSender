<!DOCTYPE html>
<%@tag description="Template Site tag" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@attribute name="title" fragment="true" %>
<html>
<head>
    <title><jsp:invoke fragment="title"/></title>

    <spring:url value="/resources/css/bootstrap.css" var="bootstrap"/>
    <link href="${bootstrap}" rel="stylesheet" />

</head>

<body>

<jsp:doBody/>

<div class="container">
    <footer>
        <div class="row">
            <div class="col-lg-12">
                <p>Copyright © Netcracker</p>
            </div>
        </div>
    </footer>
</div>

</body>

</html>