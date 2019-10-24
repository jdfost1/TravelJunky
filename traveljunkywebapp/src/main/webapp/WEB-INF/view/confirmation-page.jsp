<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Comfirmation Page</title>
	<jsp:include page="template/css-include.jsp"/>
	<jsp:include page="template/favicon.jsp"/>
</head>
<body>
    <jsp:include page="template/header.jsp"/>
	<div class="container top-50">
		<h1>Your Small Business Application has been submitted! Thank you for your interest in Travel Junky! We will be reviewing your application soon and will
		reach out to your Business Contact via email upon review. Thank You!</h1>
		<p><a href="${pageContext.request.contextPath}">Click here to return to the home page.</a></p>
	</div>
	<%@ include file="template/js-include.html"%>
</body>
</html>