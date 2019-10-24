<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Business Referral Form</title>
	<jsp:include page="template/css-include.jsp"/>
	<jsp:include page="template/favicon.jsp"/>
</head>
<body>
	<jsp:include page="template/header.jsp"/>
	<div class="container">
		<div class="row">
			<div class="col-sm-8 col-lg-6 offset-sm-2 offset-lg-3">
				<div id="card" class="card">
					<h5 class="card-header">Business Referral Form</h5>
					<div class="card-body">

						<form:form action="${userActionUrl}" modelAttribute="businessForm">
						<div class="form-group">
								<label for="nameInput">Business Name</label>
								<form:input path="businessName" id="businessName" cssClass="form-control"/>
								
							</div>
							<div class="form-group">
								<label for="emailInput">Business Contact Email Address</label>
								<form:input type="email" path="businessEmail" id="emailInput" cssClass="form-control"/>
								
							</div>
							<div class="form-group">
								<label for="nameInput">Business Contact Name</label>
								<form:input path="contactName" id="nameInput" cssClass="form-control"/>
							
							</div>
							<div class="form-group">
								<label for="ageInput">Business Contact Phone</label>
								<form:input path="contactPhone" id="ageInput" cssClass="form-control"/>
							
							</div>
						
							
							<button type="submit" id="submitButton" class="btn btn-block btn-success">Submit Form</button>
							
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="template/js-include.html"%>