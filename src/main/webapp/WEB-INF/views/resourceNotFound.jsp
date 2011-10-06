<html xmlns:jsp="http://java.sun.com/JSP/Page"
	xmlns:c="http://java.sun.com/jsp/jstl/core"
	xmlns:spring="http://www.springframework.org/tags">
<jsp:directive.page contentType="text/html;charset=UTF-8" />
<jsp:directive.page pageEncoding="UTF-8" />
<head></head>
<body>
	<div xmlns:c="http://java.sun.com/jsp/jstl/core"
		xmlns:fn="http://java.sun.com/jsp/jstl/functions"
		xmlns:spring="http://www.springframework.org/tags"
		xmlns:util="urn:jsptagdir:/WEB-INF/tags/util"
		xmlns:jsp="http://java.sun.com/JSP/Page" version="2.0">
		<jsp:directive.page contentType="text/html;charset=UTF-8" />
		<jsp:output omit-xml-declaration="yes" />
		<c:if test="${not empty exception}">
			<p>
			<h4></h4>
			<c:out value="${exception.localizedMessage}" />
			<c:forEach items="${exception.stackTrace}" var="trace">
				<c:out value="${trace}" />
				<br />
			</c:forEach>
			</p>
		</c:if>
	</div>
</body>
</html>