
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Travel Junky - View Challenges</title>
	<jsp:include page="template/css-include.jsp"/>
	<jsp:include page="template/favicon.jsp"/>
</head>
<body>
	<jsp:include page="template/header.jsp"/>
	<div class="container">
		<div class="row">
			<div class="col-sm-8 col-lg-6 offset-sm-2 offset-lg-3">
				<div id="card" class="card">
					<h5 class="card-header">Bloomington, IL Challenges</h5>
					<div class="card-body">

		<p><a href="#"> Challenge 1: ${challengeList.challenges[0].challengeName}"</a></p>
		<p><a href="#"> Challenge 2: ${challengeList.challenges[1].challengeName}"</a></p>
		<p><a href="#"> Challenge 3: ${challengeList.challenges[2].challengeName}"</a></p>
		<p><a href="#"> Challenge 4: ${challengeList.challenges[3].challengeName}"</a></p>
		<p><a href="#"> Challenge 5: ${challengeList.challenges[4].challengeName}"</a></p>
		
		
	
	
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="template/js-include.html"%>
</body>
</html>
