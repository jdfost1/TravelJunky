<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Security Authorization -->
<sec:authorize var="auth" access="hasAuthority('USER')" />

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Travel Junky</title>
	<jsp:include page="template/css-include.jsp" />
	<jsp:include page="template/favicon.jsp" />
</head>
<body>
	<jsp:include page="template/header.jsp" />
	<div class="hero">
		<h1 class="hero-heading align-middle">Welcome to TravelJunky.com</h1>
	</div>
	<div class="container">
		<div class="row">
			<c:if test="${auth}">
				
					<div class="col mt-5 mb-3">
						<h2>View your progress for the U.S. Travel Junky Challenge 2019</h2>
						<p>Here you can find out your progress and how you are matching up against others</p>
						<a class="btn btn-success btn-lg" href="${pageContext.request.contextPath}/budget/create" role="button">View Progress</a>
					</div>
				</c:if>
			
			<c:if test="${!auth}">
				<div class="col mt-5 mb-3">
					<h2>Travel Junky</h2>
					<p>Sign up to travel the country and receive rewards!</p>
					<div class="sl">
						<a class="btn btn-success sl-btn" href="${pageContext.request.contextPath}/account/sign-up" role="button">Sign Up Free</a>
						<span class="mt-2 mb-2" style="text-align:center;">OR</span>
						<a class="btn btn-outline-success sl-btn" href="${pageContext.request.contextPath}/account/login" role="button">Log In</a>
					</div>
				</div>
			</c:if>
		</div>
		<hr>
		<div class="row">
			<div class="col mt-3">
				<c:if test="${auth}">
					<h2>Welcome back Travel Junky!</h2>
					<p>Thank you for being a Travel Junky! Lets travel the world and give back to the small business community</p>
							<div class="row">
			<div class="col-10 col-sm-12 col-md-10 offset-1 offset-sm-0 offset-md-1 mb-4">
				<jsp:include page="template/quick-tools-cards.jsp"/>
			</div>
		</div>
				</c:if>
		
				
				
			</div>
		</div>
		<div class="row">
			<div class="col-10 col-sm-12 col-md-10 offset-1 offset-sm-0 offset-md-1 mb-4">
				<jsp:include page="template/quick-tools-cards1.jsp"/>
			</div>
		</div>
	</div>
	<jsp:include page="template/footer.jsp" />
	<%@ include file="template/js-include.html"%>
</body>
</html>