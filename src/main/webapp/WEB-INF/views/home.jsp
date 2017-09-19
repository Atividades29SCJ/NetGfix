<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="netgfixweb/resources/css/style.css">

<title>Home</title>
</head>
<body style="background-color: black;">
	<jsp:include page="/WEB-INF/include/nav-bar.jsp"></jsp:include>
	<div class="col-md-offset-3 col-md-6 text-center">
		<form action="/netgfixweb/login">
			<button type="submit" class="btn btn-danger0" style="margin-left: 100%; background-color: red;">Entrar</button>
		</form>
	</div>

	<div class="row">
		<p>
		<img src="<c:url value="netgfixweb/resources/img/gifs.jpg"/>" alt="Imagem de Fundo da Home" />
	</div>
</body>
</html>
