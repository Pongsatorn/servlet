<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Function</title>
</head>
<body>

<%--contains--%>
<h3>Fn:contains</h3>
<c:set var="theString" value="I am a test String"/>
<c:if test="${fn:contains(theString, 'test')}">
    <p>Found test string<p>
</c:if>

<c:if test="${fn:contains(theString, 'TEST')}">
    <p>Found TEST string<p>
</c:if>
<hr>

<%--containsIgnoreCase--%>
<h3>Fn:containsIgnoreCase</h3>
<c:set var="theString" value="I am a test String"/>
<c:if test="${fn:containsIgnoreCase(theString, 'test')}">
    <p>Found test string<p>
</c:if>

<c:if test="${fn:containsIgnoreCase(theString, 'TEST')}">
    <p>Found TEST string<p>
</c:if>
<hr>


<%--toLowerCase--%>
<h3>Fn:toLowerCase</h3>
<c:set var="first" value="This IS FiRsT String."/>
<c:set var="second" value="${fn:toLowerCase(first)}" />
<p>Final string : ${second}</p>
<hr>

<%--substring--%>
<h3>Fn:substring</h3>
<c:set var="string1" value="This is first String."/>
<c:set var="string2" value="${fn:substring(string1, 5, 15)}" />
<p>Final sub string : ${string2}</p>
<hr>


<%--split & join--%>
<h3>Fn:split & join</h3>
<c:set var="string1" value="This is first String."/>
<c:set var="string2" value="${fn:split(string1, ' ')}" />
${string2[1]}
<c:set var="string3" value="${fn:join(string2, '-')}" />
<p>String (3) : ${string3}</p>

<c:set var="string4" value="${fn:split(string3, '-')}" />
<c:set var="string5" value="${fn:join(string4, ' ')}" />
<p>String (5) : ${string5}</p>


<%--length--%>
<h3>Fn:length</h3>
<c:set var="string1" value="12345"/>
<c:set var="string2" value="78" />

<p>Length of String (1) : ${fn:length(string1)}</p>
<p>Length of String (2) : ${fn:length(string2)}</p>


</body>
</html>
