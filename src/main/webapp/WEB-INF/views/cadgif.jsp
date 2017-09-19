<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>

<link rel="stylesheet" href="netgfixweb/resources/css/style.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.js"></script>

<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>


<title>Home</title>
<body>


	<jsp:include page="/WEB-INF/include/nav-bar.jsp"></jsp:include>

	<div class="container">
	<c:url var="url" value="${empty gif.id ? '/adicionaGif' : '/adicionaGif'}"/>
	
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title text-center">CADASTRO DE GIF</h3>
			</div>
			<div class="panel-body">

				<form action="${url}" method="post" class="form-horizontal">
				<input type="hidden" name="id" value="${gif.id}" />
				
					<fieldset>
						<div class="form-group">
							<label for="autor" class="col-sm-2 control-label">Autor:</label>
							<div class="col-sm-4">
								<input type="text" class="form-control data" name="autor" value="${gif.autor}">
							</div>
						</div>
						<div class="form-group">
							<label for="descricao" class="col-sm-2 control-label">Descricao:</label>
							<div class="col-sm-4">
								<textarea rows="5" cols="5" class="form-control data" name="descricao">${gif.descricao}</textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="genero" class="col-sm-2 control-label">Gênero:</label>
							<div class="col-sm-4">
								<input type="text" class="form-control data" name="genero" value="${gif.genero}">
							</div>
						</div>
						<div class="form-group">
							<label for="categoria" class="col-sm-2 control-label">Categoria:</label>
							<div class="col-sm-4">
								<input type="text" class="form-control data" name="categoria" value="${gif.categoria}">
							</div>
						</div>
						<div class="form-group">
							<label for="address" class="col-sm-2 control-label">Link do Gif:</label>
							<div class="col-sm-6">
								<input type="text" placeholder="https://..." class="form-control data" name="address" value="${gif.address}">
							</div>
						</div>
						<div class="form-group">
							<label for="classificacaoetaria" class="col-sm-2 control-label">Classificação etária:</label>
							<div class="col-sm-4">
								<input type="number" class="form-control data" name="classificacaoetaria" value="${gif.classificacaoetaria}">
							</div>
						</div>
						
						
					</fieldset>


					<button type="submit" class="btn btn-primary">
						<span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>
						Salvar Gif
					</button>
				</form>
			</div>
		</div>
	</div>

</body>
</html>