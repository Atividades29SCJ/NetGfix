
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<html>
<head>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.js"></script>

<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<body>
	<jsp:include page="../views/header.jsp" />

<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">NETGFIX</a>
			</div>
			
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li>
						<a href="/netgfixweb/cadastro-gif">Cadastrar Gif</a>
					</li>
				
					<li>
						<a href="#">Categorias</a>
					</li>
					<li>
						<a href="#">Favoritos</a>
					</li>
					<li>
						<a href="#">Sobre</a>
					</li>
					<li>
						<a href="#">Cadastrar-se</a>
					</li>
					
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li>
						<a href="#">Logado como: Fulano</a>
					</li>
					<li>
						<a href="#">Sair</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>

</body>
</html>