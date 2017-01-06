<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Core</title>
</head>
<body>

<%--set--%>
<c:set var="salary" value="${2000*2}"/>

<%--out--%>
<h3>Set & out</h3>
<p><c:out value="Before Remove Value: ${salary}"/></p>
<hr>


<%--if--%>
<h3>if</h3>
<c:if test="${salary > 2000}">
    <p>My salary is: <c:out value="${salary}"/><p>
</c:if>
<hr>


<%--if elseif else--%>
<h3>if elseif else</h3>
<c:choose>
    <c:when test="${salary <= 0}">
    Salary is very low to survive.
    </c:when>

    <c:when test="${salary > 1000}">
    Salary is very good.
    </c:when>

    <c:otherwise>
    No comment sir...
    </c:otherwise>
</c:choose>
<hr>


<%--remove--%>
<h3>remove</h3>
<c:remove var="salary"/>
<p><c:out value="After Remove Value: ${salary}"/></p>
<hr>


<%--for each--%>
<h3>forEach</h3>
<c:set var="names" value=" Keng , Guy , Debase , Nut"  />
<c:forEach var="i" items="${names}">
    <p>Name: <c:out value="${i}"/></p>
</c:forEach>
<hr>



<%--<c:redirect url="http://www.google.com"/>--%>

</body>
</html>
