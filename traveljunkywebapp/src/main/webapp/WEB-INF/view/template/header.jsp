<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Security Authorization -->
<sec:authorize var="auth" access="hasAuthority('USER')" />

<header>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="${pageContext.request.contextPath}">Travel Junky</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			
			<c:choose>
				<c:when test="${auth}">
					<div class="dropdown">
					  <button class="btn btn-outline-success btn-lg dropdown-toggle" type="button" id="myAccountMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					    My Account
					  </button>
					  <div class="dropdown-menu dropdown-menu-right" aria-labelledby="myAccountMenuButton">
					    <a class="dropdown-item" href="${pageContext.request.contextPath}/account">View Account</a>
					    <a class="dropdown-item" href="${pageContext.request.contextPath}/account/update">Update Account</a>
					    <a class="dropdown-item" href="${pageContext.request.contextPath}/account/delete" title="You will be asked for confirmation before deletion.">Delete Account</a>
					    <div class="dropdown-divider"></div>
					    <form:form id="logout-form" action="${pageContext.request.contextPath}/account/logout" method="post">
							<button type="submit" class="btn btn-danger btn-block">Log Out</button>
						</form:form>
					  </div>
					</div>
				</c:when>
				<c:otherwise>
					<a class="btn btn-outline-success btn-lg nav-btn-login"
						href="${pageContext.request.contextPath}/account/login" role="button">Log In</a>
					
					<a class="btn btn-success btn-lg"
						href="${pageContext.request.contextPath}/account/sign-up" role="button">Sign Up</a>
				</c:otherwise>
			</c:choose>
		</div>
	</nav>
</header>